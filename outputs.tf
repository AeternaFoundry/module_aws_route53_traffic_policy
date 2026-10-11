output "route53_traffic_policies_id" {
  description = "Map of id values across all route53_traffic_policies, keyed the same as var.route53_traffic_policies"
  value       = { for k, v in aws_route53_traffic_policy.route53_traffic_policies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "route53_traffic_policies_arn" {
  description = "Map of arn values across all route53_traffic_policies, keyed the same as var.route53_traffic_policies"
  value       = { for k, v in aws_route53_traffic_policy.route53_traffic_policies : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "route53_traffic_policies_comment" {
  description = "Map of comment values across all route53_traffic_policies, keyed the same as var.route53_traffic_policies"
  value       = { for k, v in aws_route53_traffic_policy.route53_traffic_policies : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "route53_traffic_policies_document" {
  description = "Map of document values across all route53_traffic_policies, keyed the same as var.route53_traffic_policies"
  value       = { for k, v in aws_route53_traffic_policy.route53_traffic_policies : k => v.document if v.document != null && length(v.document) > 0 }
}
output "route53_traffic_policies_name" {
  description = "Map of name values across all route53_traffic_policies, keyed the same as var.route53_traffic_policies"
  value       = { for k, v in aws_route53_traffic_policy.route53_traffic_policies : k => v.name if v.name != null && length(v.name) > 0 }
}
output "route53_traffic_policies_type" {
  description = "Map of type values across all route53_traffic_policies, keyed the same as var.route53_traffic_policies"
  value       = { for k, v in aws_route53_traffic_policy.route53_traffic_policies : k => v.type if v.type != null && length(v.type) > 0 }
}
output "route53_traffic_policies_version" {
  description = "Map of version values across all route53_traffic_policies, keyed the same as var.route53_traffic_policies"
  value       = { for k, v in aws_route53_traffic_policy.route53_traffic_policies : k => v.version if v.version != null }
}

