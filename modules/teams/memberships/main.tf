# manages team members
resource "github_team_membership" "iac_team_membership" {
  team_id  = var.team_id
  for_each = var.team_member_list
  username = each.value.team_member_username
  role     = each.value.team_member_role
}
