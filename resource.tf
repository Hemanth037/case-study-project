resource "azurerm_resource_group" "myterra07" {
  name     = "myterra07"
  location = "East US"
}

resource "azurerm_storage_account" "mysaterra07" {
    name                     = "storagehk07"
    resource_group_name      = azurerm_resource_group.myterra07.name
    location                 = azurerm_resource_group.myterra07.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}