terraform {
  backend "azurerm" {
    resource_group_name  = "sentinel-cb"
    storage_account_name = "terraformstorage321"
    container_name       = "testfiles"
    key                  = "test.terraform.tfstate"
  }
}