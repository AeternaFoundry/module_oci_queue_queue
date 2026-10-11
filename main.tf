resource "oci_queue_queue" "queue_queues" {
  for_each = var.queue_queues

  compartment_id                   = each.value.compartment_id
  display_name                     = each.value.display_name
  channel_consumption_limit        = each.value.channel_consumption_limit
  custom_encryption_key_id         = each.value.custom_encryption_key_id
  dead_letter_queue_delivery_count = each.value.dead_letter_queue_delivery_count
  defined_tags                     = each.value.defined_tags
  freeform_tags                    = each.value.freeform_tags
  purge_trigger                    = each.value.purge_trigger
  purge_type                       = each.value.purge_type
  retention_in_seconds             = each.value.retention_in_seconds
  timeout_in_seconds               = each.value.timeout_in_seconds
  visibility_in_seconds            = each.value.visibility_in_seconds

  dynamic "capabilities" {
    for_each = each.value.capabilities != null ? each.value.capabilities : []
    content {
      is_primary_consumer_group_enabled                       = capabilities.value.is_primary_consumer_group_enabled
      primary_consumer_group_dead_letter_queue_delivery_count = capabilities.value.primary_consumer_group_dead_letter_queue_delivery_count
      primary_consumer_group_display_name                     = capabilities.value.primary_consumer_group_display_name
      primary_consumer_group_filter                           = capabilities.value.primary_consumer_group_filter
      type                                                    = capabilities.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

