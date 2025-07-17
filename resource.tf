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

resource "azurerm_storage_container" "mysacontainer07" {
    name                  = "my-casestudy-container"
    storage_account_name  = azurerm_storage_account.storagehk07.name
    container_access_type = "private"
}