provider "github" {
  owner = var.owner
}
terraform {
  required_version = "1.3.4"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.8.0"
    }
  }
}
