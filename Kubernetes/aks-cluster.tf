#resource "random_pet" "prefix" {}

provider "azurerm" {
  features {}
}

#resource "azurerm_resource_group" "default" {
#  name     = "${random_pet.prefix.id}-rg"
#  location = "centralus"

#  tags = {
#    environment = "Demo"
#  }
#}

data "azurerm_resource_group" "default" {
  name     = var.resourcegroupname
#  location = "centralus"
}

#data "azurerm_log_analytics_workspace" "ws" {
#  name                = "testlaw"
#  resource_group_name = "ddd"
#}


resource "azurerm_kubernetes_cluster" "default" {
#  name                = "${random_pet.prefix.id}-aks"
  name                = var.aksclustername
  location            = data.azurerm_resource_group.default.location
  resource_group_name = data.azurerm_resource_group.default.name
#  dns_prefix          = "${random_pet.prefix.id}-k8s"
  dns_prefix          = "testingdns-k8s"

  network_profile {
    network_plugin     = "kubenet"
    load_balancer_sku  = "Basic"
    network_policy     = "calico"
  }

#  addon_profile {
#      oms_agent {
#      enabled                    = true
#      log_analytics_workspace_id = data.azurerm_log_analytics_workspace.ws.id
#      }
#  }

  default_node_pool {
    name            = var.nodepoolname
    node_count      = var.nodepoolcount
    vm_size         = var.nodepoolvmsize
    os_disk_size_gb = 30
  }

  service_principal {
    client_id     = var.appId
    client_secret = var.password
  }

  role_based_access_control {
    enabled = true
  }

  tags = {
    environment = "Demo"
  }
}
