resource "azuread_access_package_resource_package_association" "access_package_resource_package_associations" {
  for_each = var.access_package_resource_package_associations

  access_package_id               = each.value.access_package_id
  catalog_resource_association_id = each.value.catalog_resource_association_id
  access_type                     = each.value.access_type

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
    }
  }
}

