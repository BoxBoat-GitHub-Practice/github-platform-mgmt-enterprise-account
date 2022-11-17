# creates and manages milestones associated with a repository
resource "github_repository_milestone" "iac_milestone" {
  for_each    = local.milestones
  repository  = var.repository_name
  owner       = var.repository_owner
  title       = each.value.title
  description = each.value.description
  due_date    = each.value.due_date
  state       = each.value.state

}

locals {
  milestones = {
    for key, val in var.repo_milestone_list :
    key => merge({
      title       = val.milestone_title
      description = val.milestone_description
      due_date    = val.milestone_due_date
      state       = val.milestone_state

    })
    # if var.has_issue == true 
  }
}

output "print_milestone" {
  value = local.milestones
}
