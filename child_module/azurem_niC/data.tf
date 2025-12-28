data "azurerm_subnet" "subnett" {
  name                 ="subnetss"
  virtual_network_name = "vnetwork"
  resource_group_name  = "rg_block"
}

data "azurerm_public_ip" "public_iP" {
  name                = "pip"
  resource_group_name = "rg_block"
}