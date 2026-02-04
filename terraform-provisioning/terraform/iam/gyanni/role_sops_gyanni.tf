module "sops_gyanni" {
  source = "../_modules/sops"
  name   = "gyanni"
  allowed_arns_for_common = [
    "arn:aws:iam::${var.account_id.id}:root",
    "arn:aws:iam::${var.account_id.id}:role/atlantis-ecs_task_execution"
  ]
  allowed_arns_for_secure = [
    "arn:aws:iam::${var.account_id.id}:root",
    "arn:aws:iam::${var.account_id.id}:role/atlantis-ecs_task_execution"
  ]
}

output "sops_gyanni_common_role_arn" {
  value = module.sops_gyanni.common_role_arn
}

output "sops_gyanni_secure_role_arn" {
  value = module.sops_gyanni.secure_role_arn
}
