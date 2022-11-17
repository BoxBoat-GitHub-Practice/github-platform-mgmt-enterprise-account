# manages organization settings
resource "github_organization_settings" "iac_organization" {
    billing_email = var.org_billing_email
    name = var.org_name 
    description = var.org_description
    company = var.org_company
    email = var.org_email
    location = var.org_location
    has_organization_projects = var.org_has_organization_projects
    has_repository_projects = var.org_has_repository_projects
    default_repository_permission = var.org_default_repository_permission
    members_can_create_repositories = var.org_members_can_create_repositories
    members_can_create_public_repositories = var.org_members_can_create_public_repositories
    members_can_create_private_repositories = var.org_members_can_create_private_repositories
    members_can_create_internal_repositories = var.org_members_can_create_internal_repositories
    members_can_create_pages = var.org_members_can_create_pages
    members_can_create_public_pages = var.org_members_can_create_public_pages
    members_can_create_private_pages = var.org_members_can_create_private_pages
    members_can_fork_private_repositories = var.org_members_can_fork_private_repositories
    web_commit_signoff_required = var.org_web_commit_signoff_required
    advanced_security_enabled_for_new_repositories = var.org_advanced_security_enabled_for_new_repositories
    dependabot_alerts_enabled_for_new_repositories =  var.org_dependabot_alerts_enabled_for_new_repositories
    dependabot_security_updates_enabled_for_new_repositories = var.org_dependabot_security_updates_enabled_for_new_repositories
    dependency_graph_enabled_for_new_repositories = var.org_dependency_graph_enabled_for_new_repositories
    secret_scanning_enabled_for_new_repositories = var.org_secret_scanning_enabled_for_new_repositories
    secret_scanning_push_protection_enabled_for_new_repositories = var.org_secret_scanning_push_protection_enabled_for_new_repositories
}
