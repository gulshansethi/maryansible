

module "mssql-server" {

  source = "./modules/mssql-server"

  create_resource_group = var.create_resource_group
  resource_group_name   = var.resourcegroup
  resource_group_name_secondary   = var.secondaryresourcegroup
  location              = var.primarylocation

  # SQL Server and Database details
  # The valid service objective name for the database include S0, S1, S2, S3, P1, P2, P4, P6, P11 
  sqlserver_name               = var.sqlservername
  sqlserver_name_secondary= var.sqlservername_secondary
  database_name                = var.databasename
  sql_database_edition         = var.databaseedition
  sqldb_service_objective_name = var.sqldb_service_objective_name

  enable_threat_detection_policy = var.enable_threat_detection_policy
  enable_sql_server_extended_auditing_policy = var.enable_sql_server_extended_auditing_policy
  enable_vulnerability_assessment = var.enable_vulnerability_assessment

  ad_admin_login_name = var.ad_admin_login_name


  # Sql failover group creation. required secondary location input. 
  enable_failover_group         = var.enable_failover_group
  secondary_sql_server_location = var.secondarylocation
  failover_group_name  = var.failover_group_name

  enable_firewall_rules = var.enable_firewall_rules

}

