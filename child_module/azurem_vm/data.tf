data "azurerm_network_interface" "nics" {
  name                = "nic_block"
  resource_group_name ="rg_block"
}