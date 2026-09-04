terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.90"
    }
  }

  backend "azurerm" {
    container_name        = "tfstate"
    key                   = "prod.terraform.tfstate"
    use_azuread_auth      = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}
