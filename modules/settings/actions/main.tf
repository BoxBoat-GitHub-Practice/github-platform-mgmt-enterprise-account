resource "github_actions_organization_permissions" "iac_org_actions_permissions" {
  allowed_actions      = var.org_allowed_actions
  enabled_repositories = var.org_actions_enabled_repositories
  allowed_actions_config {
    github_owned_allowed = var.org_actions_github_owned_allowed
    patterns_allowed     = var.org_actions_allowed_patterns
    verified_allowed     = var.org_actions_verified_allowed
  }
  # enabled_repositories_config {
  #   repository_ids = [github_repository.iac_repo.repo_id]
  # }
}


