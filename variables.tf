variable "owner" {}
#---------------------------------------------------------------------------------------------
# Settings | (ie. Organization Settings)
#---------------------------------------------------------------------------------------------
variable "org_billing_email" {}
variable "org_name" {}
variable "org_description" {}
variable "org_company" {}
variable "org_email" {}
variable "org_location" {}
variable "org_has_organization_projects" {}
variable "org_has_repository_projects" {}
variable "org_default_repository_permission" {}
variable "org_members_can_create_repositories" {}
variable "org_members_can_create_public_repositories" {}
variable "org_members_can_create_private_repositories" {}
variable "org_members_can_create_internal_repositories" {}
variable "org_members_can_create_pages" {}
variable "org_members_can_create_public_pages" {}
variable "org_members_can_create_private_pages" {}
variable "org_members_can_fork_private_repositories" {}
variable "org_web_commit_signoff_required" {}
variable "org_advanced_security_enabled_for_new_repositories" {}
variable "org_dependabot_alerts_enabled_for_new_repositories" {}
variable "org_dependabot_security_updates_enabled_for_new_repositories" {}
variable "org_dependency_graph_enabled_for_new_repositories" {}
variable "org_secret_scanning_enabled_for_new_repositories" {}
variable "org_secret_scanning_push_protection_enabled_for_new_repositories" {}

#---------------------------------------------------------------------------------------------
# Settings > Actions | (ie Organization Actions Settings)
#---------------------------------------------------------------------------------------------
variable "org_allowed_actions" {}
variable "org_actions_enabled_repositories" {}
variable "org_actions_github_owned_allowed " {}
variable "org_actions_verified_allowed " {}
variable "org_actions_allowed_patterns " {}

#---------------------------------------------------------------------------------------------
# People > Members | (ie Organization Members)
#---------------------------------------------------------------------------------------------
variable "org_member_map" {}

# #---------------------------------------------------------------------------------------------
# # Teams | (ie Organization Teams/Settings/Members)
# #---------------------------------------------------------------------------------------------
variable "teams_map" {}

# #---------------------------------------------------------------------------------------------
# # Repositories 
# #---------------------------------------------------------------------------------------------
variable "repo_map" {}

# #---------------------------------------------------------------
# variable "milestone_title" {}
# variable "milestone_desc" {}
# variable "milestone_due_date" {}

#---------------------------------------------------------------

# variable "collaborator_username" {}
# variable "invitee_token" {}

# variable "org_project_name" {}
# variable "org_project_body" {}
# variable "repo_project_name" {}
# variable "repo_project_body" {}
