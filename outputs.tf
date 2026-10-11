output "data_catalog_policy_tag_iam_members_id" {
  description = "Map of id values across all data_catalog_policy_tag_iam_members, keyed the same as var.data_catalog_policy_tag_iam_members except keys with no id are omitted"
  value       = { for k, v in google_data_catalog_policy_tag_iam_member.data_catalog_policy_tag_iam_members : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_catalog_policy_tag_iam_members_condition" {
  description = "Map of condition values across all data_catalog_policy_tag_iam_members, keyed the same as var.data_catalog_policy_tag_iam_members except keys with no condition are omitted"
  value       = { for k, v in google_data_catalog_policy_tag_iam_member.data_catalog_policy_tag_iam_members : k => one(v.condition) if v.condition != null && length(v.condition) > 0 }
}
output "data_catalog_policy_tag_iam_members_etag" {
  description = "Map of etag values across all data_catalog_policy_tag_iam_members, keyed the same as var.data_catalog_policy_tag_iam_members except keys with no etag are omitted"
  value       = { for k, v in google_data_catalog_policy_tag_iam_member.data_catalog_policy_tag_iam_members : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "data_catalog_policy_tag_iam_members_member" {
  description = "Map of member values across all data_catalog_policy_tag_iam_members, keyed the same as var.data_catalog_policy_tag_iam_members except keys with no member are omitted"
  value       = { for k, v in google_data_catalog_policy_tag_iam_member.data_catalog_policy_tag_iam_members : k => v.member if v.member != null && length(v.member) > 0 }
}
output "data_catalog_policy_tag_iam_members_policy_tag" {
  description = "Map of policy_tag values across all data_catalog_policy_tag_iam_members, keyed the same as var.data_catalog_policy_tag_iam_members except keys with no policy_tag are omitted"
  value       = { for k, v in google_data_catalog_policy_tag_iam_member.data_catalog_policy_tag_iam_members : k => v.policy_tag if v.policy_tag != null && length(v.policy_tag) > 0 }
}
output "data_catalog_policy_tag_iam_members_role" {
  description = "Map of role values across all data_catalog_policy_tag_iam_members, keyed the same as var.data_catalog_policy_tag_iam_members except keys with no role are omitted"
  value       = { for k, v in google_data_catalog_policy_tag_iam_member.data_catalog_policy_tag_iam_members : k => v.role if v.role != null && length(v.role) > 0 }
}

