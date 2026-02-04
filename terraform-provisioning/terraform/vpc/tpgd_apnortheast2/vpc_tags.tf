# EKS 태그 - EKS 실습 시 주석 해제 필요
# 주의: for_each 키가 apply 후에만 알 수 있는 값에 의존하므로
#       VPC 생성 후 별도로 apply 하거나, 정적 키로 리팩토링 필요

# resource "aws_ec2_tag" "vpc_tags" {
#   for_each    = local.vpc_tags
#   resource_id = aws_vpc.default.id
#   key         = each.key
#   value       = each.value
# }
# resource "aws_ec2_tag" "public_subnet_tags" {
#   for_each    = { for entry in local.public_subnets_tags_flat : "${entry.id}_${entry.key}" => entry }
#   resource_id = each.value.id
#   key         = each.value.key
#   value       = each.value.value
# }
# resource "aws_ec2_tag" "private_subnet_tags" {
#   for_each    = { for entry in local.private_subnets_tags_flat : "${entry.id}_${entry.key}" => entry }
#   resource_id = each.value.id
#   key         = each.value.key
#   value       = each.value.value
# }