# manages organization settings
module "org_settings" {
  source                                                           = "./modules/settings"
  org_billing_email                                                = var.org_billing_email
  org_name                                                         = var.org_name
  org_description                                                  = var.org_description
  org_company                                                      = var.org_company
  org_email                                                        = var.org_email
  org_location                                                     = var.org_location
  org_has_organization_projects                                    = var.org_has_organization_projects
  org_has_repository_projects                                      = var.org_has_repository_projects
  org_default_repository_permission                                = var.org_default_repository_permission
  org_members_can_create_repositories                              = var.org_members_can_create_repositories
  org_members_can_create_public_repositories                       = var.org_members_can_create_public_repositories
  org_members_can_create_private_repositories                      = var.org_members_can_create_private_repositories
  org_members_can_create_internal_repositories                     = var.org_members_can_create_internal_repositories
  org_members_can_create_pages                                     = var.org_members_can_create_pages
  org_members_can_create_public_pages                              = var.org_members_can_create_public_pages
  org_members_can_create_private_pages                             = var.org_members_can_create_private_pages
  org_members_can_fork_private_repositories                        = var.org_members_can_fork_private_repositories
  org_web_commit_signoff_required                                  = var.org_web_commit_signoff_required
  org_advanced_security_enabled_for_new_repositories               = var.org_advanced_security_enabled_for_new_repositories
  org_dependabot_alerts_enabled_for_new_repositories               = var.org_dependabot_alerts_enabled_for_new_repositories
  org_dependabot_security_updates_enabled_for_new_repositories     = var.org_dependabot_security_updates_enabled_for_new_repositories
  org_dependency_graph_enabled_for_new_repositories                = var.org_dependency_graph_enabled_for_new_repositories
  org_secret_scanning_enabled_for_new_repositories                 = var.org_secret_scanning_enabled_for_new_repositories
  org_secret_scanning_push_protection_enabled_for_new_repositories = var.org_secret_scanning_push_protection_enabled_for_new_repositories
}

# manages organization actions settings
# module "org_actions_settings" {
#   source = "./modules/settings/actions"
#   org_allowed_actions = var.org_allowed_actions
#   org_actions_enabled_repositories = var.org_actions_enabled_repositories
# }
