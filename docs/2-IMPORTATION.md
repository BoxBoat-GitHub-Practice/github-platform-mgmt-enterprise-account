# Importation of High-Priority Resources into Terraform State

## overview

- why do we need to import resources into terraform state
- what are standard terraform import statements
- what is terraformer

## pre-requisites

1. locally [install terraform](https://releases.hashicorp.com/terraform/) version 0.13.0 as this is the required version for terraformer use.
  - I use [tfenv](https://github.com/tfutils/tfenv) to manage terraform version installaitons on my mac. Tfenv can be installed by running the following [brew](https://formulae.brew.sh/formula/tfenv) command `brew install tfenv`
    - `tfenv install 0.13.0`
    - `tfenv install 1.3.4`
    - `tfenv use 0.13.0`
2. locally [install terraformer](https://github.com/GoogleCloudPlatform/terraformer) version 0.8.22
  - terraformer can be installed by running the following [brew](https://formulae.brew.sh/formula/terraformer) command `brew install terraformer`
3. create a repository following the appropriate [naming conventions]() 'gh-mgmt-<org-name>' and clone it locally. This repository will hold the terraform configuration for your desired organization.

## inputs/steps

1. Copy over the backend.tf and provider.tf files located within examples/gh-mgmt-import-template. Perform the required input changes specified by inline comments.
2. Set environment variables for the GitHub_Owner(ie. target organization name) and GitHub_Token.
3. run `terraform init`
4. run `terraformer import github --owner=<GitHub_Owner> --resources members,teams,repositories --path-pattern {output}/{provider}/ --compact  --token=<GitHub_Token>`
5. Move the files contained within the "generated" directory to the root level & rename the statefile to match what was specified in backend.tf from step 1.
6. Drop the renamed statefile into the appropriate container. Validate state file configuration, for boxboat organizations continue to leverage the following resources:
  - Resource Group: github-iac
  - Storage Account: terraform10
  - Container: state-files
  - Subscription ID: d09f4363-eae7-4c79-864e-08154540c083
  - organziation secrets can be leveraged for github actions use: CLIENT_ID, CLIENT_SECRET, TENANT_ID, SUBSCRIPTION_ID
7. Import resources not included through terraformer.
  - run the below command to obtain the Organization ID.
``` 
curl \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer <GitHUB_Token>" \
  https://api.github.com/orgs/<GitHub_Owner> 
```
  - copy the settings.tf & settings.auto.tfvars files to the root of your terraform configuration.
  - run `terraform init`
  - run `terraform import module.org_settings.github_organization_settings.iac_organization <Organization_ID>`
  - input values into the settings.auto.tfvars as neccessary. 
8. Validate succuessful terraformer and standard terraform import.
  - run `terraform init`
  - run `terraform plan`
  - expect to see statefile matching configuration, no changes. 
  
## outputs

## additional references/links