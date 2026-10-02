output "resource_group_name" {
  description = "Name of the resource group containing the network."
  value       = azurerm_resource_group.network.name
}

output "virtual_network_id" {
  description = "ID of the created virtual network."
  value       = azurerm_virtual_network.main.id
}

output "subnet_ids" {
  description = "Subnet IDs keyed by subnet name."
  value = {
    for name, subnet in azurerm_subnet.main : name => subnet.id
  }
}