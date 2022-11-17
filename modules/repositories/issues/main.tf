# creates and manages repo issues
resource "github_issue" "iac_issue" {
  for_each   = local.issues
  repository = var.repository_name
  title      = each.value.title
  body       = each.value.body
  labels     = each.value.labels
  assignees  = each.value.assignees
}

locals {
  issues = {
    for key, val in var.repo_issue_list :
    key => merge({
      title     = val.issue_title
      body      = val.issue_body
      labels    = val.issue_labels
      assignees = val.issue_assignees
    })
    # if var.has_issue == true 
  }
}

output "print_issue" {
  value = local.issues
}

# # creates and manages repo issues with an associated milestone
# resource "github_issue" "iac_issue_with_milestone" {
#   count = var.issue_has_milestone ? 1 : 0
#   repository       = var.repo_name
#   title            = var.issue_title
#   body             = var.issue_body
#   labels           = ["iac", "documentation"]
#   assignees        = ["jay-rodriguez-bb"]
#   milestone_number = github_repository_milestone.iac_milestone.number
# }
