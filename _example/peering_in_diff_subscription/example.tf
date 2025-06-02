provider "azurerm" {
  features {}
  subscription_id = "c468b1axxxxxxxxxxxxxxxxxxded9dw"
}

provider "azurerm" {
  alias = "mgmt"
  features {}
  subscription_id = "0a7be84xxxxxxxxxxxxxxxxxx5e"
}

data "azurerm_resource_group" "resource_group_1" {
  provider = azurerm.mgmt
  name     = "appvm-linux-tested-resource-group"
}

data "azurerm_virtual_network" "mgmt-staging-vnet" {
  provider            = azurerm.mgmt
  name                = "app-test-vnet"
  resource_group_name = data.azurerm_resource_group.resource_group_1.name
}

module "vnet_peering" {
  source                        = "../.."
  enabled_diff_subs_peering     = true
  resource_group_1_name         = ""
  diff_subs_resource_group_name = data.azurerm_resource_group.resource_group_1.name
  alias_subs_id                 = "0a7be846-xxxxxxxxxxxxxx98787h"
  vnet_1_name                   = ""
  vnet_1_id                     = ""
  vnet_diff_subs_name           = data.azurerm_virtual_network.mgmt-staging-vnet.name
  vnet_diff_subs_id             = data.azurerm_virtual_network.mgmt-staging-vnet.id
}


