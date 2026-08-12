variable "appstream_stacks" {
  description = <<EOT
Map of appstream_stacks, attributes below
Required:
    - name
Optional:
    - description
    - display_name
    - embed_host_domains
    - feedback_url
    - redirect_url
    - region
    - tags
    - tags_all
    - access_endpoints (block):
        - endpoint_type (required)
        - vpce_id (optional)
    - application_settings (block):
        - enabled (required)
        - settings_group (optional)
    - storage_connectors (block):
        - connector_type (required)
        - domains (optional)
        - resource_identifier (optional)
    - streaming_experience_settings (block):
        - preferred_protocol (optional)
    - user_settings (block):
        - action (required)
        - permission (required)
EOT

  type = map(object({
    name               = string
    description        = optional(string)
    display_name       = optional(string)
    embed_host_domains = optional(set(string))
    feedback_url       = optional(string)
    redirect_url       = optional(string)
    region             = optional(string)
    tags               = optional(map(string))
    tags_all           = optional(map(string))
    access_endpoints = optional(list(object({
      endpoint_type = string
      vpce_id       = optional(string)
    })))
    application_settings = optional(object({
      enabled        = bool
      settings_group = optional(string)
    }))
    storage_connectors = optional(list(object({
      connector_type      = string
      domains             = optional(list(string))
      resource_identifier = optional(string)
    })))
    streaming_experience_settings = optional(object({
      preferred_protocol = optional(string)
    }))
    user_settings = optional(list(object({
      action     = string
      permission = string
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.appstream_stacks : (
        v.access_endpoints == null || (length(v.access_endpoints) <= 4)
      )
    ])
    error_message = "Each access_endpoints list must contain at most 4 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.appstream_stacks : (
        v.application_settings == null || (v.application_settings.settings_group == null || (length(v.application_settings.settings_group) >= 0 && length(v.application_settings.settings_group) <= 100))
      )
    ])
    error_message = "must be between 0 and 100 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appstream_stacks : (
        v.embed_host_domains == null || (alltrue([for x in v.embed_host_domains : length(x) >= 0 && length(x) <= 128]))
      )
    ])
    error_message = "must be between 0 and 128 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appstream_stacks : (
        v.feedback_url == null || (length(v.feedback_url) >= 0 && length(v.feedback_url) <= 100)
      )
    ])
    error_message = "must be between 0 and 100 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appstream_stacks : (
        v.redirect_url == null || (length(v.redirect_url) >= 0 && length(v.redirect_url) <= 1000)
      )
    ])
    error_message = "must be between 0 and 1000 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appstream_stacks : (
        v.storage_connectors == null || alltrue([for item in v.storage_connectors : (item.domains == null || (alltrue([for x in item.domains : length(x) >= 1 && length(x) <= 64])))])
      )
    ])
    error_message = "must be between 1 and 64 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.appstream_stacks : (
        v.storage_connectors == null || alltrue([for item in v.storage_connectors : (item.resource_identifier == null || (length(item.resource_identifier) >= 1 && length(item.resource_identifier) <= 2048))])
      )
    ])
    error_message = "must be between 1 and 2048 characters"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

