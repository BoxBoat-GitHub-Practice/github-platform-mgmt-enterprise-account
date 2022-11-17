# manages team members
resource "github_repository_environment" "iac_repo_environments" {
  environment = "example"
  repository  = var.repository_name
  wait_timer  = 60
  reviewers {
    teams = [var.team_id]
    # users = [data.github_user.current.id]
  }
  deployment_branch_policy {
    protected_branches     = true
    custom_branch_policies = false
  }
}
