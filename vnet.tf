resource "azurerm_virtual_network" "vnet" {
    name = "saireddy-vnet"
    address_space = {"10.1.0.0/16"}
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
  
}

resource "azurerm_subnet" "subnet" {
    name = "saireddy-subnet"
    address_prefixes = {"10.1.1.0/24"}
    resource_group_name = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
  
}