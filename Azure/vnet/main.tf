resource "azurerm_virtual_network" "base" {
  name                = var.network_info.name
  address_space       = var.network_info.address_space
  location            = var.location
  resource_group_name = var.resource_group
}

resource "azurerm_subnet" "subnets" {
  for_each             = var.network_info.subnets
  name                 = each.key
  address_prefixes     = [each.value]
  virtual_network_name = azurerm_virtual_network.base.name
  resource_group_name  = var.resource_group
  depends_on           = [azurerm_virtual_network.base]
}
