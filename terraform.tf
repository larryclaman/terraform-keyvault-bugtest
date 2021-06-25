terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }


    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.65.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }

  }
  # You will need to change the organization when using your Terraform Cloud account
  # backend "remote" {
  #   hostname     = "app.terraform.io"
  #   organization = "onlydole"

  #   workspaces {
  #     name = "mtc-exp-vault"
  #   }
  # }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "OneMTC"
    workspaces {
      name = "OneMTC-Larry-test"
    }

  }
}

