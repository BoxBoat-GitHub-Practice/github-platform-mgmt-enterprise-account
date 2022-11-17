# manages team repositories (ie. adds team to existing repo)
resource "github_team_repository" "iac_team_repository" {
  for_each = { for repo in var.team_repo_list :
    repo.repo_name => repo.repo_permission
  }
  team_id    = var.team_id
  repository = each.key
  permission = each.value
}
