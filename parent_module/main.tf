module "resource_group" {
    source = "../child_module/azurem_rg"
    rgss = var.resource_group
  
}

module "ventt" {
    source = "../child_module/azurem_vnet"
    ventt = var.virtual_network
    depends_on = [ module.resource_group ]
  
}

module "subnet" {
    source = "../child_module/azurem_subnet"
    subnets = var.subnet_name
  depends_on = [ module.ventt ]
}

module "pip_name" {
    source = "../child_module/azurem_pip"
    pip = var.pipsss
    depends_on = [ module.resource_group ]
  
}
module "nic_block" {
    source = "../child_module/azurem_niC"
    nics = var.network_interface
  depends_on = [ module.subnet ,module.resource_group]
}


module "virtual_machine" {
    source = "../child_module/azurem_vm"
    vmss = var.linux_machine
  depends_on = [ module.nic_block ]
}