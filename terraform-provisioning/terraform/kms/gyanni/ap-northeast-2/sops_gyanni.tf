module "sops_gyanni" {
  source       = "../../_modules/sops"
  common_alias = "sops-gyanni"
  common_aliow_arns = {
    manage = [
      "arn:aws:iam::${var.account_id.id}:root"
    ]
    use = [
      local.remote_iam.sops_gyanni_common_role_arn
    ]
    delete = ["arn:aws:iam::${var.account_id.id}:root"]
  }
  secure_alias = "secure_sops-gyanni"
  secure_aliow_arns = {
    manage = ["arn:aws:iam::${var.account_id.id}:root"]
    use = [
      local.remote_iam.sops_gyanni_secure_role_arn
    ]
    delete = ["arn:aws:iam::${var.account_id.id}:root"]
  }
}
