output "queue_queues_id" {
  description = "Map of id values across all queue_queues, keyed the same as var.queue_queues except keys with no id are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.id if v.id != null && length(v.id) > 0 }
}
output "queue_queues_capabilities" {
  description = "Map of capabilities values across all queue_queues, keyed the same as var.queue_queues except keys with no capabilities are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.capabilities if v.capabilities != null && length(v.capabilities) > 0 }
}
output "queue_queues_channel_consumption_limit" {
  description = "Map of channel_consumption_limit values across all queue_queues, keyed the same as var.queue_queues except keys with no channel_consumption_limit are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.channel_consumption_limit if v.channel_consumption_limit != null }
}
output "queue_queues_compartment_id" {
  description = "Map of compartment_id values across all queue_queues, keyed the same as var.queue_queues except keys with no compartment_id are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "queue_queues_custom_encryption_key_id" {
  description = "Map of custom_encryption_key_id values across all queue_queues, keyed the same as var.queue_queues except keys with no custom_encryption_key_id are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.custom_encryption_key_id if v.custom_encryption_key_id != null && length(v.custom_encryption_key_id) > 0 }
}
output "queue_queues_dead_letter_queue_delivery_count" {
  description = "Map of dead_letter_queue_delivery_count values across all queue_queues, keyed the same as var.queue_queues except keys with no dead_letter_queue_delivery_count are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.dead_letter_queue_delivery_count if v.dead_letter_queue_delivery_count != null }
}
output "queue_queues_defined_tags" {
  description = "Map of defined_tags values across all queue_queues, keyed the same as var.queue_queues except keys with no defined_tags are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "queue_queues_display_name" {
  description = "Map of display_name values across all queue_queues, keyed the same as var.queue_queues except keys with no display_name are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "queue_queues_freeform_tags" {
  description = "Map of freeform_tags values across all queue_queues, keyed the same as var.queue_queues except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "queue_queues_lifecycle_details" {
  description = "Map of lifecycle_details values across all queue_queues, keyed the same as var.queue_queues except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "queue_queues_messages_endpoint" {
  description = "Map of messages_endpoint values across all queue_queues, keyed the same as var.queue_queues except keys with no messages_endpoint are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.messages_endpoint if v.messages_endpoint != null && length(v.messages_endpoint) > 0 }
}
output "queue_queues_purge_trigger" {
  description = "Map of purge_trigger values across all queue_queues, keyed the same as var.queue_queues except keys with no purge_trigger are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.purge_trigger if v.purge_trigger != null }
}
output "queue_queues_purge_type" {
  description = "Map of purge_type values across all queue_queues, keyed the same as var.queue_queues except keys with no purge_type are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.purge_type if v.purge_type != null && length(v.purge_type) > 0 }
}
output "queue_queues_retention_in_seconds" {
  description = "Map of retention_in_seconds values across all queue_queues, keyed the same as var.queue_queues except keys with no retention_in_seconds are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.retention_in_seconds if v.retention_in_seconds != null }
}
output "queue_queues_state" {
  description = "Map of state values across all queue_queues, keyed the same as var.queue_queues except keys with no state are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.state if v.state != null && length(v.state) > 0 }
}
output "queue_queues_system_tags" {
  description = "Map of system_tags values across all queue_queues, keyed the same as var.queue_queues except keys with no system_tags are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "queue_queues_time_created" {
  description = "Map of time_created values across all queue_queues, keyed the same as var.queue_queues except keys with no time_created are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "queue_queues_time_updated" {
  description = "Map of time_updated values across all queue_queues, keyed the same as var.queue_queues except keys with no time_updated are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "queue_queues_timeout_in_seconds" {
  description = "Map of timeout_in_seconds values across all queue_queues, keyed the same as var.queue_queues except keys with no timeout_in_seconds are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.timeout_in_seconds if v.timeout_in_seconds != null }
}
output "queue_queues_visibility_in_seconds" {
  description = "Map of visibility_in_seconds values across all queue_queues, keyed the same as var.queue_queues except keys with no visibility_in_seconds are omitted"
  value       = { for k, v in oci_queue_queue.queue_queues : k => v.visibility_in_seconds if v.visibility_in_seconds != null }
}

