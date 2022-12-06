# manages team members
dynamic "github_team_membership" {
  team_id  = var.team_id
  for_each = var.team_member_list
  content {
    username = github_team_membership.value.team_member_username
    role     = github_team_membership.value.team_member_role
  }
  # username = each.value.team_member_username
  # role     = each.value.team_member_role
}
