resource "github_actions_organization_permissions" "iac_org_actions_permissions" {
  allowed_actions = var.org_allowed_actions
  enabled_repositories = var.org_actions_enabled_repositories
  allowed_actions_config {
    github_owned_allowed = true
    patterns_allowed     = null
    verified_allowed     = true
  }
  # enabled_repositories_config {
  #   repository_ids = [github_repository.iac_repo.repo_id]
  # }
}

# resource "github_actions_runner_group" "example" {
#   name                    = github_repository.example.name
#   visibility              = "selected"
#   selected_repository_ids = [github_repository.example.repo_id]
# }

