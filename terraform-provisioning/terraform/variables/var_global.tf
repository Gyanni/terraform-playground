variable "assume_role_arn" {
  description = "The role to assume when accessing the AWS API."
  default     = ""
}

# Atlantis user
variable "atlantis_user" {
  description = "The username that will be triggering atlantis commands. This will be used to name the session when assuming a role. More information - https://github.com/runatlantis/atlantis#assume-role-session-names"
  default     = "atlantis_user"
}

# Account IDs!
# Add all account ID to here 
variable "account_id" {
  default = {
    id        = "289574460446"
    art-id    = "816736805842"
    datadog   = "464622532012"
    sumologic = "926226587429"
  }
}

# Remote State that will be used when creating other resources
# You can add any resource here, if you want to refer from others
variable "remote_state" {
  default = {
    vpc = {
      tpgd_apnortheast2 = {
        bucket = "tfplayground-apnortheast2-tfstate"
        key    = "provisioning/terraform/vpc/tpgd_apnortheast2/terraform.tfstate"
        region = "ap-northeast-2"
      }
    }
    iam = {
      gyanni = {
        bucket = "tfplayground-apnortheast2-tfstate"
        key    = "provisioning/terraform/iam/gyanni/terraform.tfstate"
        region = "ap-northeast-2"
      }
    }

    kms = {
      gyanni = {
        apne2 = {
          bucket = "tfplayground-apnortheast2-tfstate"
          key    = "provisioning/terraform/kms/gyanni/ap-northeast-2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    ecs = {
      nginx = {
        tpgdapne2 = {
          bucket = "tfplayground-apnortheast2-tfstate"
          key    = "provisioning/terraform/ecs/nginx/tpgd_apnortheast2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
      demo = {
        tpgdapne2 = {
          bucket = "tfplayground-apnortheast2-tfstate"
          key    = "provisioning/terraform/ecs/demo/tpgd_apnortheast2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    security_group = {
      gyanni = {
        tpgdapne2 = {
          bucket = "tfplayground-apnortheast2-tfstate"
          key    = "provisioning/terraform/securitygroup/gyanni/tpgd_apnortheast2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    codedeploy = {
      gyanni = {
        apne2 = {
          bucket = "tfplayground-apnortheast2-tfstate"
          key    = "provisioning/terraform/codedeploy/ap-northeast-2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    secretsmanager = {
      gyanni = {
        apne2 = {
          bucket = "tfplayground-apnortheast2-tfstate"
          key    = "provisioning/terraform/secretsmanager/gyanni/ap-northeast-2/terraform.tfstate"
          region = "ap-northeast-2"
        }
      }
    }

    eks = {
      tpgdapne2-nhwy = {
        bucket = "tfplayground-apnortheast2-tfstate"
        key    = "provisioning/terraform/eks/tpgd_apnortheast2/tpgdapne2-nhwy/terraform.tfstate"
        region = "ap-northeast-2"
      }
    }


    s3 = {
      gyanni = {
        bucket = "tfplayground-apnortheast2-tfstate"
        key    = "provisioning/terraform/s3/gyanni/terraform.tfstate"
        region = "ap-northeast-2"
      }
    }
  }
}
