output "access_package_resource_package_associations_id" {
  description = "Map of id values across all access_package_resource_package_associations, keyed the same as var.access_package_resource_package_associations"
  value       = { for k, v in azuread_access_package_resource_package_association.access_package_resource_package_associations : k => v.id }
}
output "access_package_resource_package_associations_access_package_id" {
  description = "Map of access_package_id values across all access_package_resource_package_associations, keyed the same as var.access_package_resource_package_associations"
  value       = { for k, v in azuread_access_package_resource_package_association.access_package_resource_package_associations : k => v.access_package_id }
}
output "access_package_resource_package_associations_access_type" {
  description = "Map of access_type values across all access_package_resource_package_associations, keyed the same as var.access_package_resource_package_associations"
  value       = { for k, v in azuread_access_package_resource_package_association.access_package_resource_package_associations : k => v.access_type }
}
output "access_package_resource_package_associations_catalog_resource_association_id" {
  description = "Map of catalog_resource_association_id values across all access_package_resource_package_associations, keyed the same as var.access_package_resource_package_associations"
  value       = { for k, v in azuread_access_package_resource_package_association.access_package_resource_package_associations : k => v.catalog_resource_association_id }
}

