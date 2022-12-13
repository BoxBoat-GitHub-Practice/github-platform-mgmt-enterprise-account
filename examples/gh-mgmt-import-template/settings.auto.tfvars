owner = ""
#---------------------------------------------------------------------------------------------
# Organization Settings | (ie Settings)
#---------------------------------------------------------------------------------------------
# Settings > General
#-----------------------------------------
org_billing_email             = ""
org_name                      = ""
org_description               = ""
org_company                   = ""
org_email                     = ""
org_location                  = ""
org_has_organization_projects = true
org_has_repository_projects   = true

# Settings > Access > Member privileges
#-----------------------------------------
org_default_repository_permission            = "read"
org_members_can_create_repositories          = false
org_members_can_create_public_repositories   = false
org_members_can_create_private_repositories  = false
org_members_can_create_internal_repositories = false # enterprise only 
org_members_can_create_pages                 = false
org_members_can_create_public_pages          = false
org_members_can_create_private_pages         = false
org_members_can_fork_private_repositories    = false

# Settings > Repository > Repository defaults
#-----------------------------------------
org_web_commit_signoff_required = true

# Settings > Security > Code security and analysis
#-----------------------------------------
org_advanced_security_enabled_for_new_repositories               = false # enterprise only
org_dependabot_security_updates_enabled_for_new_repositories     = true
org_dependabot_alerts_enabled_for_new_repositories               = true
org_dependency_graph_enabled_for_new_repositories                = true
org_secret_scanning_enabled_for_new_repositories                 = false # enterprise only
org_secret_scanning_push_protection_enabled_for_new_repositories = false # enterprise only

# Settings > Actions > General
#-----------------------------------------
org_allowed_actions              = "selected"
org_actions_enabled_repositories = "all"
org_actions_github_owned_allowed = true
org_actions_verified_allowed     = true
org_actions_allowed_patterns     = ["boxboat/terraform-azure-actions@*"]

# Settings > Actions > Runner groups
#-----------------------------------------


