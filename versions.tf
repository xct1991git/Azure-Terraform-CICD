terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.90"
    }
  }

  backend "azurerm" {
    # Los valores concretos se inyectarán dinámicamente desde el pipeline de GitHub
    container_name = "tfstate"
    key            = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}
