# creates and manages repositories
resource "github_repository" "iac_repo" {
  name         = var.repo_name
  description  = var.repo_description
  auto_init    = var.repo_auto_init
  has_issues   = var.repo_has_issues
  has_wiki     = var.repo_has_wiki
  has_projects = var.repo_has_projects
  # has_downloads = var.repo_has_downloads
  visibility = var.repo_visibility
  # allow_auto_merge       = var.repo_allow_auto_merge
  # allow_update_branch = var.repo_allow_update_branch
  # archived            = var.repo_archived
  # default_branch      = var.repo_default_branch
  allow_merge_commit     = var.repo_allow_merge_commit
  allow_squash_merge     = var.repo_allow_squash_merge
  allow_rebase_merge     = var.repo_allow_rebase_merge
  delete_branch_on_merge = var.repo_delete_branch_on_merge
  is_template            = var.repo_is_template
  gitignore_template     = var.repo_gitignore_template
  license_template       = var.repo_license_template
  topics                 = var.repo_topics
  vulnerability_alerts   = var.repo_vulnerability_alerts
  # pages {
  #   source {
  #     branch = "main"
  #     path   = "/docs"
  #   }
  # }
}

# # creates and manages files within a repository
# resource "github_repository_file" "iac-gitignore" {
#   repository          = github_repository.iac_repo.name
#   branch              = "main"
#   file                = ".gitignore"
#   content             = "**/*.tfstate"
#   commit_message      = "Managed by Terraform"
#   commit_author       = "Terraform User"
#   commit_email        = "jay@boxboat.com"
#   overwrite_on_create = true
# }
