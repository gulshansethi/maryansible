

module "mssql-server" {

  source = "./modules/mssql-server"

  create_resource_group = true
  resource_group_name   = "rg-shared-westeurope-01"
  resource_group_name_secondary   = "rg-shared-westeurope-02"
  location              = "eastus"

  # SQL Server and Database details
  # The valid service objective name for the database include S0, S1, S2, S3, P1, P2, P4, P6, P11 
  sqlserver_name               = "testingsqldbserver01"
  database_name                = "demomssqldb"
  sql_database_edition         = "Standard"
  sqldb_service_objective_name = "S0"


  enable_threat_detection_policy = false
  enable_sql_server_extended_auditing_policy = false
  enable_vulnerability_assessment = false

  ad_admin_login_name = "mary@anysite.net"


  # Sql failover group creation. required secondary location input. 
  enable_failover_group         = true
  secondary_sql_server_location = "eastus2"
  failover_group_name  = "test-failover-group-name"

  enable_firewall_rules = false

}


### Provide the Existing RG and KeyVault Name

data "azurerm_key_vault" "this" {
  name                = "adfafewqrasfasfas1"
  resource_group_name = "testrg"
}

resource "azurerm_key_vault_secret" "example" {
  name         = "newkv"
  value        = "anyvalue"
  key_vault_id = data.azurerm_key_vault.this.id
}

