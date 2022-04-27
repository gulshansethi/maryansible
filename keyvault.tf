### Provide the Existing RG and KeyVault Name

data "azurerm_key_vault" "this" {
  name                = var.keyvaultname
  resource_group_name = var.resourcegroup
}

resource "azurerm_key_vault_secret" "example" {
  name         = var.secretkey
  value        = var.secretvalue
  key_vault_id = data.azurerm_key_vault.this.id
}

