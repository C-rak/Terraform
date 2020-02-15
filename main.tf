module "network" {
    source              = "Azure/network/azurerm"
    resource_group_name = "rkrg"
    vnet_name           = ["hubvnet"],["spokevnet"]
    location            = "northeurope"
    address_space       = ["10.0.0.0/16"],["10.1.0.0/16"]
    subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24", "10.0.4.0/24", "10.0.5.0/24" ],["10.1.0.0/24"]
    subnet_names        = ["Gatewaysubnet", "hub-subnet-web", "spoke-subnet-app", "AzureBastionSubnet", "AzureFirewallSubnet"],["spokesubnet"]
  }
