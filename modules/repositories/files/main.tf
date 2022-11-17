# # creates and manages files within a repository
resource "github_repository_file" "iac-gitignore" {
  for_each            = local.files
  repository          = var.repository_name
  file                = each.value.file
  branch              = each.value.branch
  content             = each.value.content
  commit_message      = each.value.commit_message
  commit_author       = each.value.commit_author
  commit_email        = each.value.commit_email
  overwrite_on_create = each.value.overwrite_on_create
}

locals {
  files = {
    for key, val in var.repo_file_list :
    key => merge({
      file                = val.file_file
      branch              = val.file_branch
      content             = val.file_content
      commit_message      = val.file_commit_message
      commit_author       = val.file_commit_author
      commit_email        = val.file_commit_email
      overwrite_on_create = val.file_overwrite_on_create
    })
    # if var.has_issue == true 
  }
}

output "print_file" {
  value = local.files
}
