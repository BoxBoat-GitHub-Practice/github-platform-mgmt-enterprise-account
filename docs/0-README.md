# Infrastructure as Code for CI/CD Platform Management (GitHub)

*Note: As the GitHub practice expects majority of its client revenue to originate through migration deals, this workload affirms that assumption and begins after a migration has taken place. As a solution, this workload can be sold either accompying a migration deal or independently. It is expected that BoxBoat engineers will perform the innitial setup of work, importation tasks, conversion tasks, and train the client for thier continued operational use/maintenece.*

## Overview
There are four primary pillars to managing GitHub at scale for a given enterprise.

- Migration onto GitHub
- Importation of high priority resources into IaC through terraformer and standard terraform import statements. High-priority resources include the following: organization settings, organization members, repository settings, teams, team members, and team repositories.
- Conversion of resources in terraform state, to align with a modular architecture configuration. This ensures minimal code maintenance and a dry codebase.
- Operation and maintenance through git fundamentals (ie. default read access, issue creation, pull requests, code owners/team review, and CI/CD). The creation of a merge request will output a terraform plan and the approval of a merge request will perform CRUD operations on the infrastructure.

## Architecture

The github-platform-mgmt-enterprise-account repository exists to provide modular infrastructure as code(IaC) for a given enterprise's organization within thier GitHub vendor application installation. The primary technology leveraged within this repository is the [GitHub Provider for Terraform](https://registry.terraform.io/providers/integrations/github/latest/docs), which allows users to manage their GitHub organization's settings, members, teams, repos, and projects in a scalable/reliable/automated/distributed manner. Contained within this repository are the reusable modules themselves(/modules), example templates starting from a brand new enterprise organization(/examples/gh-mgmt-template), example templates starting from a migrated enterprise organization requiring importation(/examples/gh-mgmt-template), and all of the documentation required to navigate the entire workflow(/docs).

#### Tooling:

- [GitHub](https://github.com/)
- [Terraform](https://www.terraform.io/)
- [Github Provider For Terraform](https://registry.terraform.io/providers/integrations/github/latest/docs)
- [Terraformer](https://github.com/GoogleCloudPlatform/terraformer)

#### Resources:

- module repositories
    - [GitHub Enterprise Account](https://github.com/boxboat-github-practice/github-platform-mgmt-enterprise-account)
- actions repositories
    - [terraform-azure-actions](https://github.com/boxboat/terraform-azure-actions)
- iac managed organizations, repositories
    - [boxboat](https://github.com/boxboat)
        - [gh-mgmt-boxboat](https://github.com/boxboat-github-practice/gh-mgmt-boxboat)
    - [boxboat-github-practice](https://github.com/boxboat-github-practice)
        - [gh-mgmt-boxboat-github-practice](https://github.com/boxboat-github-practice/gh-mgmt-boxboat-github-practice)
    - boxboat-emu-demo
        - [gh-mgmt-boxboat-emu-demo]()
    - boxboat-emu-jay-playground
        - [gh-mgmt-jay-playground](https://github.com/boxboat-github-practice/gh-mgmt-jay-playground)
    - client-1
        - [gm-mgmt-client-1]()