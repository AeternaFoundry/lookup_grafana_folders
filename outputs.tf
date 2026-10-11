output "folders_lookup_id" {
  description = "Map of id values across all folders_lookup, keyed the same as var.folders_lookup except keys with no id are omitted"
  value       = { for k, v in data.grafana_folders.folders_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "folders_lookup_folders" {
  description = "Map of folders values across all folders_lookup, keyed the same as var.folders_lookup except keys with no folders are omitted"
  value       = { for k, v in data.grafana_folders.folders_lookup : k => v.folders if v.folders != null && length(v.folders) > 0 }
}
output "folders_lookup_org_id" {
  description = "Map of org_id values across all folders_lookup, keyed the same as var.folders_lookup except keys with no org_id are omitted"
  value       = { for k, v in data.grafana_folders.folders_lookup : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}

