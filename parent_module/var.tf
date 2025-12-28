variable "resource_group" {
    type = map(object({
      name = string
      location=string
    }))
  
}

variable "virtual_network" {
  type = map(object({
    name                = string
    address_space       = list(string)
    location            = string
    resource_group_name = string
  }))

}

variable "subnet_name" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "pipsss" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
  }))
}


variable "network_interface" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
}


variable "linux_machine" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    size                = string
    admin_username      = string
    admin_password      = string
  }))

}