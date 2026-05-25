
variable "rg-name" {}

resource "azurerm_resource_group" "meta" {
  for_each = var.rg-name
  name     = each.key
  location = each.value
}

variable "meta_storge" {}

resource "azurerm_storage_account" "meta21" {
  for_each            = var.meta_storge
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  account_tier        = each.value.account_tier
  account_replication_type = each.value.account_replication_type

  depends_on = [ azurerm_resource_group.meta ]
}