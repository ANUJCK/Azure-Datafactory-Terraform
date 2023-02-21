variable "resource_group_name" {
  default = "datafactoryrg"
  type = string
}

variable "location" {
  default = "East US"
  type = string
}

variable "github_configuration" {
  default = null
  type = object({
    git_url         = string # - OPTIONAL: Specifies the GitHub Enterprise host name. Defaults to "https://github.com"
    account_name    = string # - REQUIRED: Specifies the GitHub account name. Defaults to ''
    repository_name = string # - REQUIRED: Specifies the name of the git repository. 
    branch_name     = string # - OPTIONAL: Specifies the branch of the repository to get code from. Defaults to 'main'
    root_folder     = string # - OPTIONAL: Specifies the root folder within the repository. Defaults to '/' for top level.
  })
}

variable "address_space" {
  default = ["10.0.0.0/16"]
  type = list(any)
}

variable "dns_servers" {
  default = ["10.0.0.4", "10.0.0.5"]
  type = list(any)
}

variable "subnet_name" {
  default = "stringsubnet1"
type = string
}

variable "name_private_service_connection"{
  type = string
  default = "string"
}

variable "azurerm_private_endpoint_name" {
  default = null
  type = string 
  }

variable "address_prefix_subnet" {
  default = ["10.0.1.0/24"]
  type = list(string)
}


variable "public_network_enabled" {
  default = null
  type = bool
}

variable "enable_private_endpoint" {
  default = true
  type = bool
}




variable "tags" {
  default = {
    environment = "string"
  }
   type = map

}


variable "name_data_factory" {
  default = "string123"
  type = string
}

variable "managed_virtual_network_enabled" {
  default = false
  type= bool
}

#variable "customer_managed_key_id" {
#  default = null
 
 # type = string



#}

#variable "customer_managed_key_identity_id" {
 # default = null
  #type = string
#}

variable "virtual_network_name" {
  default = "test123454345435"
  type = string
}

variable "tags_data_factory" {
  default = {
    environment = "string"

  }
   type = map
}


variable "git_url" {
  default = ""
  type = string
}

variable "account_name" {
  default = ""
  type = string
}

variable "branch_name" {
  default = ""
  type = string
}

variable "repository_name" {
  default = ""
  type = string

}



variable "root_folder" {
  default = ""
  type = string
  }