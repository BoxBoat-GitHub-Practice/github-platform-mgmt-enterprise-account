## get users from other orgs if desired

curl \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer "\
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "https://api.github.com/orgs/boxboat/members?per_page=100"  | grep login > memeber-output.txt

### State File Management

create a resource group in azure (github-iac)
create storage account within the resource group (terraform10)
create a container within the storage account (state-files)

setup env vars for service principle
export ARM_SUBSCRIPTION_ID="<azure_subscription_id>"
export ARM_TENANT_ID="<azure_subscription_tenant_id>"
export ARM_CLIENT_ID="<service_principal_appid>"
export ARM_CLIENT_SECRET="<service_principal_password>"

### Auth/Access

create service principle in azure, assign it the "Storage Account Contributor" and the "Storage Blob Data Owner" roles
``` az ad sp create-for-rbac --name "tf-backend-sp" --role "Storage Blob Data Owner" --scopes /subscriptions/d09f4363-eae7-4c79-864e-08154540c083/resourcegroups/github-iac/providers/Microsoft.Storage/storageAccounts/terraform10 --sdk-auth ```

- [assign roles to sp](https://learn.microsoft.com/en-us/azure/storage/blobs/assign-azure-role-data-access?tabs=portal)
- [required roles](https://learn.microsoft.com/en-us/azure/storage/blobs/authorize-data-operations-portal)

az subscription d09f4363-eae7-4c79-864e-08154540c083

### terraformer: document removal of "private" repo var in favor of "visibility"

### Helpful Links/Commands

[tfenv](https://github.com/tfutils/tfenv)
terraform force-unlock 72f78dfa-01c3-0927-c8da-383437a3437c
