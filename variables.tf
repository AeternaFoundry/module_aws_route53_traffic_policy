variable "route53_traffic_policies" {
  description = <<EOT
Map of route53_traffic_policies, attributes below
Required:
    - document
    - name
Optional:
    - comment
EOT

  type = map(object({
    document = string
    name     = string
    comment  = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.route53_traffic_policies : (
        length(v.document) >= 0 && length(v.document) <= 102400
      )
    ])
    error_message = "must be between 0 and 102400 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

