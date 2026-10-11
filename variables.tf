variable "access_package_resource_package_associations" {
  description = <<EOT
Map of access_package_resource_package_associations, attributes below
Required:
    - access_package_id
    - catalog_resource_association_id
Optional:
    - access_type
EOT

  type = map(object({
    access_package_id               = string
    catalog_resource_association_id = string
    access_type                     = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.access_package_resource_package_associations : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.access_package_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.access_package_resource_package_associations : (
        length(v.catalog_resource_association_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.access_package_resource_package_associations : (
        v.access_type == null || (contains(["Member", "Owner"], v.access_type))
      )
    ])
    error_message = "must be one of: Member, Owner"
  }
}

