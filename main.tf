resource "google_data_catalog_policy_tag_iam_member" "data_catalog_policy_tag_iam_members" {
  for_each = var.data_catalog_policy_tag_iam_members

  member     = each.value.member
  policy_tag = each.value.policy_tag
  role       = each.value.role

  dynamic "condition" {
    for_each = each.value.condition != null ? [each.value.condition] : []
    content {
      description = condition.value.description
      expression  = condition.value.expression
      title       = condition.value.title
    }
  }
}

