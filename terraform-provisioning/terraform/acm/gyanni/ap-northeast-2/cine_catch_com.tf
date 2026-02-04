module "star_terraform_devart_tv" {
  source = "../_modules/acm"

  domain_name = "cine-catch.com"
  zone_id     = var.r53_variables.terraform_devart_tv_zone_id
  subject_alternative_names          = ["cine-catch.com"]
  validation_allow_overwrite_records = true
  wait_for_validation                = true
}
