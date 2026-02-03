terraform {
  backend "s3" {
    bucket         = "tfplayground-apnortheast2-tfstate"
    key            = "init/terraform.tfstate"
    region         = "ap-northeast-2"
    dynamodb_table = "terraform-lock-table"
  }
}

variable "assume_role_arn" {
  description = "The role to assume when accessing the AWS API."
  default     = ""
}

provider "aws" {
  region = "ap-northeast-2"

  assume_role {
    role_arn = var.assume_role_arn
  }
}

resource "aws_s3_bucket" "tfstate" {
  bucket = "tfplayground-apnortheast2-tfstate"
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.tfstate.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "terraform_state_lock_table" {
  name         = "terraform-lock-table"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"


  attribute {
    name = "LockID"
    type = "S"
  }
}
