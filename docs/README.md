Build status badges

# GitHub Platform Mgmt for an Organization Account
The github-platform-mgmt-organization-account repository exists to provide infrastructure as code for a given organization's GitHub vendor application installation. The primary technology leveraged within this repository is the [GitHub Provider for Terraform](https://registry.terraform.io/providers/integrations/github/5.7.0), which allows users to manage their GitHub organization's setting, members, teams, repos, and projects in a scalable/reliable/automated/distributed manner. This repository is one of three relevant repositories in regards to github platform management through IAC due to "[github account type](https://docs.github.com/en/get-started/learning-about-github/types-of-github-accounts)" context constraints within the GitHub Provider for Terraform. Please refer to the following repositories depending on your needs.
- [Personal accounts](https://github.com/BoxBoat-GitHub-Practice/github-platform-mgmt-personal-account)
- [Organization accounts](https://github.com/BoxBoat-GitHub-Practice/github-platform-mgmt-organization-account)
- [Enterprise accounts](https://github.com/BoxBoat-GitHub-Practice/github-platform-mgmt-enterprise-account)
 
## Table of Contents
1. [Getting Started](#getting-started)
   1. [Prerequisites](#prerequisites)
   1. [Inputs](#inputs)
   1. [Outputs](#outputs)
1. [Additional References](#additional-references)
 
## Getting Started
This project is currently in POC state, and requires users to run terraform locally on their terminal. v1.0.2 aims to create github actions to perform this function in order to have events tied to issues, pull-requests, and branch merges; which will then trigger pipeline runs to update platform settings/members/teams/repos/projects automatically once approved by a distributed team of reviewers. 
 
### Prerequisites
1. create a GitHub organization if you don't already have one
2. create a GitHub Personal Access Token(PAT) that has the appropriate scope to manage organization resources
 
### Inputs
1. set the GITHUB_TOKEN=<_PAT> and GITHUB_OWNER=<org_name> environment variables within your terminal session
2. remove & include any root level .tf files(people.tf, repositories.tf, settings.tf, teams.tf) for your desired configuration. For example, if you only want to manage an org's settings only include the settings.tf configuration file within the root directory.
3. rename & adjust the template.tfvars file as necessary
4. run:
   - `terraform init`
   - `terraform plan -var-file=template.tfvars`
   - `terraform apply -var-file=template.tfvars`
 
### Outputs
TBD
 
## Additional References
- [AzureAD Provider](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs)
 
**[Back to top](#table-of-contents)**
