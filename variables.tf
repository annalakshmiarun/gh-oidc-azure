variable "subscription_id" {
  description = "Azure subscription ID. Leave null to use the Azure CLI's selected subscription."
  type        = string
  default     = null
  nullable    = true
}

variable "location" {
  description = "Azure region where the resource group and virtual network will be created."
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Name of the resource group that will contain the network resources."
  type        = string
  default     = "rg-network-dev"
}

variable "virtual_network_name" {
  description = "Name of the virtual network."
  type        = string
  default     = "vnet-dev"
}

variable "address_space" {
  description = "IPv4 address space for the virtual network."
  type        = list(string)
  default     = ["10.20.0.0/16"]
}

variable "subnets" {
  description = "Subnet names and IPv4 address prefixes. Each subnet must fit within the virtual network address space."
  type = map(object({
    address_prefixes = list(string)
  }))
  default = {
    app = {
      address_prefixes = ["10.20.1.0/24"]
    }
    data = {
      address_prefixes = ["10.20.2.0/24"]
    }
  }
}