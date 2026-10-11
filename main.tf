data "grafana_folders" "folders_lookup" {
  for_each = var.folders_lookup

  org_id = each.value.org_id
}

