output "appstream_stacks_id" {
  description = "Map of id values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "appstream_stacks_access_endpoints" {
  description = "Map of access_endpoints values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => v.access_endpoints if v.access_endpoints != null && length(v.access_endpoints) > 0 }
}
output "appstream_stacks_application_settings" {
  description = "Map of application_settings values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => one(v.application_settings) if v.application_settings != null && length(v.application_settings) > 0 }
}
output "appstream_stacks_arn" {
  description = "Map of arn values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "appstream_stacks_created_time" {
  description = "Map of created_time values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => v.created_time if v.created_time != null && length(v.created_time) > 0 }
}
output "appstream_stacks_description" {
  description = "Map of description values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => v.description if v.description != null && length(v.description) > 0 }
}
output "appstream_stacks_display_name" {
  description = "Map of display_name values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "appstream_stacks_embed_host_domains" {
  description = "Map of embed_host_domains values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => v.embed_host_domains if v.embed_host_domains != null && length(v.embed_host_domains) > 0 }
}
output "appstream_stacks_feedback_url" {
  description = "Map of feedback_url values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => v.feedback_url if v.feedback_url != null && length(v.feedback_url) > 0 }
}
output "appstream_stacks_name" {
  description = "Map of name values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "appstream_stacks_redirect_url" {
  description = "Map of redirect_url values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => v.redirect_url if v.redirect_url != null && length(v.redirect_url) > 0 }
}
output "appstream_stacks_region" {
  description = "Map of region values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => v.region if v.region != null && length(v.region) > 0 }
}
output "appstream_stacks_storage_connectors" {
  description = "Map of storage_connectors values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => v.storage_connectors if v.storage_connectors != null && length(v.storage_connectors) > 0 }
}
output "appstream_stacks_streaming_experience_settings" {
  description = "Map of streaming_experience_settings values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => one(v.streaming_experience_settings) if v.streaming_experience_settings != null && length(v.streaming_experience_settings) > 0 }
}
output "appstream_stacks_tags" {
  description = "Map of tags values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "appstream_stacks_tags_all" {
  description = "Map of tags_all values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "appstream_stacks_user_settings" {
  description = "Map of user_settings values across all appstream_stacks, keyed the same as var.appstream_stacks"
  value       = { for k, v in aws_appstream_stack.appstream_stacks : k => v.user_settings if v.user_settings != null && length(v.user_settings) > 0 }
}

