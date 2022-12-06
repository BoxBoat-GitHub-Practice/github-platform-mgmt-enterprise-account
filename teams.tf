module "iac_teams" {
  source         = "./modules/teams"
  for_each       = var.teams_map
  team_name      = each.value.team_name
  team_desc      = each.value.team_desc
  team_privacy   = each.value.team_privacy
  parent_team_id = each.value.parent_team_id
}

module "iac_teams_members" {
  source           = "./modules/teams/members"
  for_each         = module.iac_teams
  team_id          = each.value.team_id
  team_member_list = var.teams_map[each.value.team_name].team_member_list
}

module "iac_teams_repositories" {
  source         = "./modules/teams/repositories"
  for_each       = module.iac_teams
  team_id        = each.value.team_id
  team_repo_list = var.teams_map[each.value.team_name].team_repo_list
}

