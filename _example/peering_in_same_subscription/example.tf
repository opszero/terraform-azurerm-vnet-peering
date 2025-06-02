provider "azurerm" {
  features {}
}

module "vnet_peering" {
  source                = "../.."
  enabled_peering       = true
  resource_group_1_name = ""
  resource_group_2_name = ""
  different_rg          = true
  vnet_1_name           = ""
  vnet_1_id             = ""
  vnet_2_name           = ""
  vnet_2_id             = ""
}
