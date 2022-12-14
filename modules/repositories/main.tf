# creates and manages repositories
resource "github_repository" "iac_repo" {
  name         = var.repo_name
  description  = var.repo_description
  auto_init    = var.repo_auto_init #to produce an initial commit in the repository.
  has_issues   = var.repo_has_issues
  has_wiki     = var.repo_has_wiki
  has_projects = var.repo_has_projects
  visibility   = var.repo_visibility
  # archived            = var.repo_archived
  # allow_auto_merge       = var.repo_allow_auto_merge
  # github_branch_default = var.repo_github_branch_default    #This can only be set after a repository has already been created, and after a correct reference has been created for the target branch inside the repository.
  # allow_update_branch = var.repo_allow_update_branch
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
  # ignore_vulnerability_alerts_during_read = var.repo_ignore_vulnerability_alerts_during_read
  # security_and_analysis = var.repo_security_and_analysis
  security_and_analysis {
    advanced_security {
      status = "enabled"
    }
    secret_scanning {
      status = "enabled"
    }
    secret_scanning_push_protection {
      status = "enabled"
    }
  }

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
