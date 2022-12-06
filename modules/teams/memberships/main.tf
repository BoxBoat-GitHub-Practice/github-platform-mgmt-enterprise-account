# manages team members
resource "github_team_membership" "iac_team_membership" {
  team_id = var.team_id
  for_each = { for membership in var.team_member_list :
    membership.team_member_username => membership.team_member_role
  }
  username = each.key
  role     = each.value
}

