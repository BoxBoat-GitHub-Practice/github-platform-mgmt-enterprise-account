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
  allow_auto_merge = var.repo_allow_auto_merge
  # github_branch_default = var.repo_github_branch_default    #This can only be set after a repository has already been created, and after a correct reference has been created for the target branch inside the repository.
  allow_update_branch                     = var.repo_allow_update_branch
  allow_merge_commit                      = var.repo_allow_merge_commit
  allow_squash_merge                      = var.repo_allow_squash_merge
  allow_rebase_merge                      = var.repo_allow_rebase_merge
  delete_branch_on_merge                  = var.repo_delete_branch_on_merge
  is_template                             = var.repo_is_template
  gitignore_template                      = var.repo_gitignore_template
  license_template                        = var.repo_license_template
  topics                                  = var.repo_topics
  vulnerability_alerts                    = var.repo_vulnerability_alerts
  ignore_vulnerability_alerts_during_read = var.repo_ignore_vulnerability_alerts_during_read
  dynamic "security_and_analysis" {
    for_each = var.is_enterprise_account ? ["security_analysis"] : []  
    content {
      advanced_security {
        status = var.repo_advanced_security_status
      }
      secret_scanning {
        status = var.repo_secret_scanning_status
      }
      secret_scanning_push_protection {
        status = var.repo_secret_scanning_push_protection_status
      }
    }
  }
}

resource "github_branch_default" "this" {
  repository = github_repository.iac_repo.name
  branch = "main"
}

resource "github_branch_protection" "this" {
  repository_id = github_repository.iac_repo.name
  pattern = github_branch_default.this.branch
  enforce_admins = true
  allows_deletions = false
  require_conversation_resolution = true
  required_pull_request_reviews {
    dismiss_stale_reviews = true
    require_code_owner_reviews = true
    required_approving_review_count = 1
    require_last_push_approval = true
  }
  allows_force_pushes = false
  lock_branch = true
}
