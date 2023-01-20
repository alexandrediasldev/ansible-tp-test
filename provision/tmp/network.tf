
  #address_space       = ["10.0.0.0/16"]

    #security_rule {
    #    name                       = "SSH"
    #    priority                   = 1001
    #    direction                  = "Inbound"
    #    access                     = "Allow"
    #    protocol                   = "Tcp"
    #    source_port_range          = "*"
    #    destination_port_range     = "22"
    #    source_address_prefix      = "*"
    #    destination_address_prefix = "*"
    #}

    #security_rule {
    #    name                       = "OpenVPN"
    #    priority                   = 1002
    #    direction                  = "Inbound"
    #    access                     = "Allow"
    #    protocol                   = "*"
    #    source_port_range          = "*"
    #    destination_port_range     = "1194"
    #    source_address_prefix      = "*"
    #    destination_address_prefix = "*"
    #}