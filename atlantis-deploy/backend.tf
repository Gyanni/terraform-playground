terraform {
  required_version = ">= 1.3.0"

  backend "s3" {
    bucket         = "tfplayground-apnortheast2-tfstate"
    key            = "provisioning/terraform/platform/atlantis/terraform.tfstate"
    region         = "ap-northeast-2"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}