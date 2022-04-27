variable "create_resource_group" {
  default = ""
}
variable "resourcegroup" {
  default = ""
}
variable "secondaryresourcegroup" {
  default = ""
}
variable "primarylocation" {
  default = ""
}
variable "secondarylocation" {
  default = ""
}

variable "sqlservername" {
  default = ""
}
variable "sqlservername_secondary" {
  default = ""
}
variable "databasename" {
  default = ""
}
variable "databaseedition" {
  default = ""
}
variable "sqldb_service_objective_name" {
  default = ""
}
variable "enable_threat_detection_policy" {
  default = "false"
}
variable "enable_sql_server_extended_auditing_policy" {
  default = "false"
}
variable "enable_vulnerability_assessment" {
  default = "false"
}
variable "enable_failover_group" {
  default = "false"
}
variable "failover_group_name" {
  default = ""
}
variable "enable_firewall_rules" {
  default = ""
}




variable "ad_admin_login_name" {
  default = ""
}


variable "keyvaultname" {
  default = ""
}

variable "secretkey" {
  default = ""
}
variable "secretvalue" {
  default = ""
}

