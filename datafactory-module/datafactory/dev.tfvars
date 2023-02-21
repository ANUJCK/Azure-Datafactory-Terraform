resource_group_name = "testrg"
location = "East US"
#for virtual network 
address_space = ["10.0.0.0/16"]
dns_servers = ["10.0.0.4", "10.0.0.5"]
#for subnet
subnet_name = "testsubnet"
address_prefix_subnet = ["10.0.1.0/24"]
#data factory
public_network_enabled = true
virtual_network_name = "test123454345435"
managed_virtual_network_enabled = false

#add values this configuration if you disable public network to enable public configuration
enable_private_endpoint = false
azurerm_private_endpoint_name = ""
name_private_service_connection = ""


#add values to this configuration if you wish to enable encryiption to data factory
#customer_managed_key_id = ""
#customer_managed_key_identity_id = ""

#github configuration

 github_configuration = {
    
    git_url = "https://github.com/manojkum4r/python-sample-tweeterapp.git"
    account_name = "manojkum4r"
    branch_name = "main"
    repository_name = "manojkum4r"
    root_folder = "manojkum4r/python-sample-tweeterapp"
 }