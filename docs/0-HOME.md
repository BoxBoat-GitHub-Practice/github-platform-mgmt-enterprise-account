# HOME

## Overview
There are four primary pillars to managing a ci/cd platform (GitHub) at scale.

- Migration onto GitHub
- Importation of high priority resources into IaC through terraformer and standard terraform import statements. High-priority resources include the following: organization settings, organization members, repository settings, teams, team members, and team repositories.
- Conversion of resources in terraform state, to align with a modular architecture configuration. This ensures minimal code maintenance and a dry codebase.
- Operation and maintenance through git fundamentals (ie. default read access, issue creation, pull requests, code owners/team review, and CI/CD). The creation of a merge request will output a terraform plan and the approval of a merge request will trigger CRUD operation on the infrastructure.

## Architecture Overiew
tools:
- GitHub
- Terraform
- Terraformer
- Github Provider For Terraform
resources:
- https://github.com/boxboat-github-practice/github-platform-mgmt-enterprise-account
- https://github.com/boxboat-github-practice/github-platform-mgmt-organization-account

