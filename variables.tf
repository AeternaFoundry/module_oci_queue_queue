variable "queue_queues" {
  description = <<EOT
Map of queue_queues, attributes below
Required:
    - compartment_id
    - display_name
Optional:
    - channel_consumption_limit
    - custom_encryption_key_id
    - dead_letter_queue_delivery_count
    - defined_tags
    - freeform_tags
    - purge_trigger
    - purge_type
    - retention_in_seconds
    - timeout_in_seconds
    - visibility_in_seconds
    - capabilities (block):
        - is_primary_consumer_group_enabled (optional)
        - primary_consumer_group_dead_letter_queue_delivery_count (optional)
        - primary_consumer_group_display_name (optional)
        - primary_consumer_group_filter (optional)
        - type (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id                   = string
    display_name                     = string
    channel_consumption_limit        = optional(number)
    custom_encryption_key_id         = optional(string)
    dead_letter_queue_delivery_count = optional(number)
    defined_tags                     = optional(map(string))
    freeform_tags                    = optional(map(string))
    purge_trigger                    = optional(number)
    purge_type                       = optional(string)
    retention_in_seconds             = optional(number)
    timeout_in_seconds               = optional(number)
    visibility_in_seconds            = optional(number)
    capabilities = optional(list(object({
      is_primary_consumer_group_enabled                       = optional(bool)
      primary_consumer_group_dead_letter_queue_delivery_count = optional(number)
      primary_consumer_group_display_name                     = optional(string)
      primary_consumer_group_filter                           = optional(string)
      type                                                    = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.queue_queues : (
        v.capabilities == null || alltrue([for item in v.capabilities : (item.type == null || (contains([for v in ["CONSUMER_GROUPS", "LARGE_MESSAGES"] : lower(v)], lower(item.type))))])
      )
    ])
    error_message = "must be one of: \"CONSUMER_GROUPS\", \"LARGE_MESSAGES\""
  }
}

