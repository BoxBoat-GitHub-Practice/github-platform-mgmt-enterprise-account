# manages organization users
resource "github_membership" "iac_org_members" {
  username = var.membership_username
  role     = var.membership_role
}