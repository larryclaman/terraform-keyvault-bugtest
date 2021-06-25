# see https://registry.terraform.io/providers/hashicorp/azurerm/latest
provider "azurerm" {
  skip_provider_registration = true #needs to be true so that we can use a service principal with limited rights
  features {}
}

data "azurerm_client_config" "current" {
}

data "azurerm_subscription" "primary" {
}
