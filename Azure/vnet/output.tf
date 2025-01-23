
# output "subnets_ids" {
#   value = azurerm_subnet.subnets[*].id
# }

output "vnet_id" {
  value = azurerm_virtual_network.base.id
}
