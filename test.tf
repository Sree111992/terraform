resource "azurerm_resource_group" "example" {
  name     = "${var.username}-resources"
  location = var.location
}

resource "azurerm_virtual_network" "main" {
  name                = var.vnet
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}
