variable "data_catalog_policy_tag_iam_members" {
  description = <<EOT
Map of data_catalog_policy_tag_iam_members, attributes below
Required:
    - member
    - policy_tag
    - role
Optional:
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    member     = string
    policy_tag = string
    role       = string
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

