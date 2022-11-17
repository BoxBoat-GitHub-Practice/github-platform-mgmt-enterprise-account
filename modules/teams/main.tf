# creates and manages teams
resource "github_team" "iac_teams" {
  name           = var.team_name
  description    = var.team_desc
  privacy        = var.team_privacy
  parent_team_id = var.parent_team_id
}
