resource "azurerm_virtual_network" "vnet" {
    name = "saireddy-vnet"
    address_space = {"10.1.0.0/16"}
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
  
}