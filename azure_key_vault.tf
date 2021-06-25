# see https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault
resource "azurerm_key_vault" "vault" {
  name                       = format("%s%s",substr(random_pet.vault.id,0,13),"-hashivault")
  location                   = data.azurerm_resource_group.project.location
  resource_group_name        = data.azurerm_resource_group.project.name
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days = 7
  purge_protection_enabled   = false

  sku_name = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "create",
      "delete",
      "purge",
      "get",
      "list"
    ]
  }

  


  lifecycle {
    ignore_changes = [
      tags # ignored as tags are set via Azure Policy
    ]
  }

}



resource "random_pet" "vault" {
  keepers = {
    # Generate a new pet name each time we switch to a new id
    key_vault_identifier = var.key_vault_identifier
  }
}
