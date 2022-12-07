provider "github" {
  owner = "ORGANIZATION_NAME" #requires user input
}

terraform {
  required_version = "0.13.0"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.8.0"
    }
  }
}
