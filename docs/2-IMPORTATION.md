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
1. Copy over files located within examples/gh-mgmt-import-template and make input the required values.
2. Make backend.tf
provider.tf

## outputs

## additional references/links