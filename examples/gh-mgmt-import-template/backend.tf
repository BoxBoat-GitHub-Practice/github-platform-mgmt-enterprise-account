terraform {
  backend "azurerm" {
    resource_group_name  = "github-iac"
    storage_account_name = "terraform10"
    container_name       = "state-files"
    key                  = "ORGANIZATION_NAME.tfstate" #requires user input
    subscription_id      = "d09f4363-eae7-4c79-864e-08154540c083"
  }
}
