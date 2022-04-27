create_resource_group = false

resourcegroup = "testrg"
secondaryresourcegroup = "testrg"
primarylocation = "eastus"
secondarylocation = "eastus"

# SQL Server and Database details
# The valid service objective name for the database include S0, S1, S2, S3, P1, P2, P4, P6, P11 

sqlservername = "testingsqldbserverprimary01"
sqlservername_secondary= "testingsqldbserversecondary01"
databasename = "demomssqldb"
databaseedition = "Standard"
sqldb_service_objective_name = "S0"
enable_threat_detection_policy = false
enable_sql_server_extended_auditing_policy = false
enable_vulnerability_assessment = false
enable_failover_group= true
failover_group_name  = "test-failover-group-name"
enable_firewall_rules = false

ad_admin_login_name = "mary@anysite.net"


keyvaultname = "adfafewqrasfasfas1"
secretkey = "sckey"
secretvalue = "Updatevalue"

