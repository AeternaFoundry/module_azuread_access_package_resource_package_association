output "access_package_resource_package_associations_id" {
  description = "Map of id values across all access_package_resource_package_associations, keyed the same as var.access_package_resource_package_associations"
  value       = { for k, v in azuread_access_package_resource_package_association.access_package_resource_package_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "access_package_resource_package_associations_access_package_id" {
  description = "Map of access_package_id values across all access_package_resource_package_associations, keyed the same as var.access_package_resource_package_associations"
  value       = { for k, v in azuread_access_package_resource_package_association.access_package_resource_package_associations : k => v.access_package_id if v.access_package_id != null && length(v.access_package_id) > 0 }
}
output "access_package_resource_package_associations_access_type" {
  description = "Map of access_type values across all access_package_resource_package_associations, keyed the same as var.access_package_resource_package_associations"
  value       = { for k, v in azuread_access_package_resource_package_association.access_package_resource_package_associations : k => v.access_type if v.access_type != null && length(v.access_type) > 0 }
}
output "access_package_resource_package_associations_catalog_resource_association_id" {
  description = "Map of catalog_resource_association_id values across all access_package_resource_package_associations, keyed the same as var.access_package_resource_package_associations"
  value       = { for k, v in azuread_access_package_resource_package_association.access_package_resource_package_associations : k => v.catalog_resource_association_id if v.catalog_resource_association_id != null && length(v.catalog_resource_association_id) > 0 }
}

