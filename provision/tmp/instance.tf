# demo instance

# useless maybe
  #os_profile {
    # computer_name  = "demo-instance"
    # admin_username = "demo"
    # admin_password = "..."
  #}

  # os_profile_linux_config {
  #  disable_password_authentication = true
  #  ssh_keys {
  #    key_data = file("~/.ssh/id_rsa.pub")
  #    path     = "/home/demo/.ssh/authorized_keys"
  #  }
  
  #ip_configuration {
  #  name                          = "instance1"
  #  subnet_id                     = azurerm_subnet.demo-internal-1.id
  #  private_ip_address_allocation = "Dynamic"
  #  public_ip_address_id          = azurerm_public_ip.demo-instance.id
  #}

# Dynamic public ip ?
