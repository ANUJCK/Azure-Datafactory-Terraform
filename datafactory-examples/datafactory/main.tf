module "datafactrory" {
source = "../../module/datafactory"


resource_group_name = var.resource_group_name
location = var.location
address_space = var.address_space
dns_servers = var.dns_servers
subnet_name = var.subnet_name
address_prefix_subnet = var.address_prefix_subnet
public_network_enabled = var.public_network_enabled
virtual_network_name = var.virtual_network_name
managed_virtual_network_enabled = var.managed_virtual_network_enabled
github_configuration = var.github_configuration
#add values this configuration if you disable public network to enable public configuration
enable_private_endpoint = var.enable_private_endpoint
azurerm_private_endpoint_name = var.azurerm_private_endpoint_name
name_private_service_connection = var.name_private_service_connection


#add values to this configuration if you wish to enable encryiption to data factory
#customer_managed_key_id = ""
#customer_managed_key_identity_id = ""

#github configuration


}