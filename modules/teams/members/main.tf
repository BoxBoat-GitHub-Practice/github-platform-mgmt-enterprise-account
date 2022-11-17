# manages team members
resource "github_team_members" "iac_team_members" {
  team_id = var.team_id

  dynamic "members" {
    for_each = var.team_member_list
    content {
      username = members.value.team_member_username
      role     = members.value.team_member_role
    }
  }
}
