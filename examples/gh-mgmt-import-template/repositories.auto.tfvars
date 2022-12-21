owner = "ORG_NAME"
#---------------------------------------------------------------------------------------------
# Repositories | (ie. Repositories)
#---------------------------------------------------------------------------------------------
# Repositories > "repo-name" > Settings > General
#-----------------------------------------
repo_map = {
  sample-repo = {
    repo_name                                    = "sample-repo"
    repo_description                             = "this is sample repo"
    repo_auto_init                               = true
    repo_has_issues                              = true
    repo_has_wiki                                = true
    repo_has_projects                            = true
    repo_visibility                              = "private"
    repo_allow_auto_merge                        = true
    repo_allow_update_branch                     = true
    repo_allow_rebase_merge                      = false
    repo_allow_squash_merge                      = true
    repo_allow_merge_commit                      = true
    repo_delete_branch_on_merge                  = true
    repo_is_template                             = false
    repo_gitignore_template                      = "Terraform"
    repo_license_template                        = "mit"
    repo_topics                                  = ["test"]
    repo_vulnerability_alerts                    = true
    repo_ignore_vulnerability_alerts_during_read = true
    repo_advanced_security_status                = "disabled"
    repo_secret_scanning_status                  = "disabled"
    repo_secret_scanning_push_protection_status  = "disabled"
  },
  sample-repo2 = {
    repo_name                                    = "sample-repo2"
    repo_description                             = "this is a second sample repo"
    repo_auto_init                               = true
    repo_has_issues                              = true
    repo_has_wiki                                = true
    repo_has_projects                            = true
    repo_visibility                              = "internal"
    repo_allow_update_branch                     = true
    repo_allow_auto_merge                        = true
    repo_allow_rebase_merge                      = false
    repo_allow_squash_merge                      = true
    repo_allow_merge_commit                      = true
    repo_delete_branch_on_merge                  = true
    repo_is_template                             = true
    repo_gitignore_template                      = "Terraform"
    repo_license_template                        = "mit"
    repo_topics                                  = ["template", "test"]
    repo_vulnerability_alerts                    = true
    repo_ignore_vulnerability_alerts_during_read = true
    repo_advanced_security_status                = "enabled"
    repo_secret_scanning_status                  = "enabled"
    repo_secret_scanning_push_protection_status  = "enabled"
  }
}
