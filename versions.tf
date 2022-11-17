terraform {
  required_version = ">= 0.14"

  backend "local" {
    path = "../terraformer-emu/generated/github/jay-playground/repositories/terraform.tfstate"
  }
  required_providers {
    github = {
      source  = "integrations/github"
      version = "5.7.0"
    }
  }

}
