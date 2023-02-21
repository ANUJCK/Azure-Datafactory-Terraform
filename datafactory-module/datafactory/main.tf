resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location

}
 
resource "azurerm_subnet" "service" {
  name                 = var.subnet_name
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.address_prefix_subnet

  enforce_private_link_service_network_policies = true
}


resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.address_space
  dns_servers         = var.dns_servers


}
resource "azurerm_private_endpoint" "example" {
  count =  var.enable_private_endpoint ? 1 : 0
  name                = var.azurerm_private_endpoint_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  subnet_id = azurerm_subnet.service.id

  private_service_connection {
    name = var.name_private_service_connection
    is_manual_connection              = true
  }

}


resource "azurerm_data_factory" "main" {
  name                             = var.name_data_factory
  location                         = azurerm_resource_group.example.location
  resource_group_name              = azurerm_resource_group.example.name
  managed_virtual_network_enabled  = var.managed_virtual_network_enabled
  public_network_enabled           = var.public_network_enabled
  #customer_managed_key_id          = var.customer_managed_key_id
  #customer_managed_key_identity_id = var.customer_managed_key_identity_id
  tags                             = var.tags_data_factory
  

  dynamic "github_configuration" {
    for_each = var.github_configuration != null ? [var.github_configuration] : []
    content {
      git_url         = var.git_url
      account_name    = var.account_name
      branch_name     = var.branch_name
      repository_name = var.repository_name
      root_folder     = var.root_folder
    }
  }
    
    

}