
resource "azurerm_resource_group" "faizan-rg1" {
  name     = "faizan-rg1"
  location = "northeurope"
}


resource "azurerm_virtual_network" "faizan-rg1" {
  name                = "vnet"
  resource_group_name = azurerm_resource_group.faizan-rg1.name
  location            = azurerm_resource_group.faizan-rg1.location
  address_space       = ["10.100.0.0/16"]

}


resource "azurerm_subnet" "faizan-rg1" {
  name                 = "subnet01"
  resource_group_name  = azurerm_resource_group.faizan-rg1.name
  virtual_network_name = azurerm_virtual_network.faizan-rg1.name
  address_prefixes     = ["10.100.16.0/20"]
}



resource "azurerm_public_ip" "faizan-rg1" {
  name                = "vm_public_ip"
  location            = azurerm_resource_group.faizan-rg1.location
  resource_group_name = azurerm_resource_group.faizan-rg1.name
  allocation_method   = "Static"

}

data "azurerm_public_ip" "public_ip" {
  name                = azurerm_public_ip.faizan-rg1.name
  resource_group_name = azurerm_resource_group.faizan-rg1.name
}



resource "azurerm_network_security_group" "faizan-rg1" {
  name                = "sec_gro"
  location            = azurerm_resource_group.faizan-rg1.location
  resource_group_name = azurerm_resource_group.faizan-rg1.name


  security_rule {
    name                       = "ssh"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  # security_rule {
  #   name                    = "allow-ports-10000-10050"
  #   protocol                = "Tcp"
  #   destination_port_ranges = ["10000-10050"]
  #   access                  = "Allow"
  #   priority                = 200
  #   direction               = "Inbound"
  # }

  tags = {
    environment = "Production"
  }
}

resource "azurerm_network_interface" "faizan-rg1" {
  name                = "nic"
  location            = azurerm_resource_group.faizan-rg1.location
  resource_group_name = azurerm_resource_group.faizan-rg1.name


  ip_configuration {
    name                          = "internal"
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.faizan-rg1.id
    public_ip_address_id          = azurerm_public_ip.faizan-rg1.id
  }
}

resource "azurerm_network_interface_security_group_association" "faizan-rg1" {
  network_interface_id      = azurerm_network_interface.faizan-rg1.id
  network_security_group_id = azurerm_network_security_group.faizan-rg1.id
}

resource "azurerm_linux_virtual_machine" "faizan-rg1" {

 
  name                = "faizan-strapi-it-machine"
  resource_group_name = azurerm_resource_group.faizan-rg1.name
  location            = azurerm_resource_group.faizan-rg1.location
  size                = "Standard_B1s"
  admin_username      = "faizan"
  admin_password      = "Password@123"
  disable_password_authentication = false
  depends_on          = [azurerm_public_ip.faizan-rg1]

  network_interface_ids = [
    azurerm_network_interface.faizan-rg1.id,
  ]


  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  # provisioner "remote-exec" {
  #   script = "test.sh"
  #   connection {
  #     host = azurerm_linux_virtual_machine.snipe-it.public_ip_address
  #     user = "adminuser"


  # }
}

provisioner "remote-exec" {
     inline = [
        "set -x",
        "sudo apt-get update",
        "sudo apt-get install -y nodejs npm",
        "sudo npm install -g strapi@alpha",
        "strapi new myproject  --quickstart",
        "cd myproject",
        "npm install --force",
        "strapi build",
        "strapi start",
         #"sudo apt install nodejs",
      #  "sudo apt-get install -y nodejs",
       # "curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -",
       # "sudo apt-get install -y nodejs",
     #   "sudo apt install mongodb -y",
    #    "sudo systemctl start mongodb",
     #   "sudo systemctl enable mongodb",
       # "sudo npm install strapi@alpha -g",
      #  "sudo npm install pm2 -g -y",
      #  "cd ~",
    #    "sudo apt install mongodb -y",
       # "sudo strapi new myproject --quickstart",
       # "sudo cd myproject",
     #   "sudo npm install --production",
    #    "sudo strapi build",
    #    "sudo strapi start",
      ]
     }
     connection {
      type     = "ssh"
      user     = "adminuser"
      password = "Password@123"
      host     = azurerm_public_ip.faizan-rg123.ip_address
    } 
}
