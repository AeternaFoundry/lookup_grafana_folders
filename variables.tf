variable "folders_lookup" {
  description = <<EOT
Map of folders_lookup, attributes below
Optional:
    - org_id
EOT

  type = map(object({
    org_id = optional(string)
  }))
}

