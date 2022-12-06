owner = "jay-playground"
#---------------------------------------------------------------------------------------------
# Organization Settings | (ie Settings)
#---------------------------------------------------------------------------------------------
# Settings > General
#-----------------------------------------
org_billing_email             = "facundo+boxboat@boxboat.com"
org_name                      = "jay-playground"
org_description               = "This is an imported and tf managed org"
org_company                   = "boxboat"
org_email                     = "facundo+boxboat@boxboat.com"
org_location                  = "USA"
org_has_organization_projects = true
org_has_repository_projects   = true

# Settings > Access > Member privileges
#-----------------------------------------
org_default_repository_permission            = "admin"
org_members_can_create_repositories          = false
org_members_can_create_public_repositories   = false
org_members_can_create_private_repositories  = false
org_members_can_create_internal_repositories = false # enterprise only 
org_members_can_create_pages                 = true
org_members_can_create_public_pages          = false
org_members_can_create_private_pages         = true
org_members_can_fork_private_repositories    = true

# Settings > Repository > Repository defaults
#-----------------------------------------
org_web_commit_signoff_required = true

# Settings > Security > Code security and analysis
#-----------------------------------------
org_advanced_security_enabled_for_new_repositories               = true # enterprise only
org_dependabot_security_updates_enabled_for_new_repositories     = true
org_dependabot_alerts_enabled_for_new_repositories               = true
org_dependency_graph_enabled_for_new_repositories                = true
org_secret_scanning_enabled_for_new_repositories                 = true # enterprise only
org_secret_scanning_push_protection_enabled_for_new_repositories = true # enterprise only

# Settings > Actions > General
#-----------------------------------------
org_allowed_actions              = "selected"
org_actions_enabled_repositories = "all"
org_actions_github_owned_allowed = true
org_actions_verified_allowed     = true
org_actions_allowed_patterns     = ["boxboat/terraform-azure-actions@*"]

# Settings > Actions > Runner groups
#-----------------------------------------


#---------------------------------------------------------------------------------------------
# Organization Members | (ie. People)
#---------------------------------------------------------------------------------------------
# People > Members
#-----------------------------------------
org_member_map = {
  JayRodriguez = {
    org_membership_username = "jay_boxboat"
    org_membership_role     = "admin"
  },
  DanKoch = {
    org_membership_username = "dkoch_boxboat"
    org_membership_role     = "admin"
  },
  FacundoGauna = {
    org_membership_username = "facundo_boxboat"
    org_membership_role     = "admin"
  }
}

#---------------------------------------------------------------------------------------------
# Organization Teams | (ie Teams)
#---------------------------------------------------------------------------------------------
# Teams > "team-name" > Settings > General
# Teams > "team-name" > Repositories
# Teams > "team-name" > Members
#-----------------------------------------
teams_map = {
  dev-team = {
    # General
    team_name      = "dev-team",
    team_desc      = "team of developers",
    team_privacy   = "closed",
    parent_team_id = null,
    # Repositories
    team_repo_list = [{
      repo_name       = "testing-repo"
      repo_permission = "pull"
    }]
    # Members
    team_member_list = [{
      team_member_username = "jay-rodriguez-bb"
      team_member_role     = "maintainer"
      },
      {
        team_member_username = "DntworryJayshere"
        team_member_role     = "member"
    }]
  },
  release-engineers = {
    team_name      = "release-engineers",
    team_desc      = "team required for sod and aiding in the release process",
    team_privacy   = "closed",
    parent_team_id = null,
    team_repo_list = [{
      repo_name       = "testing-repo"
      repo_permission = "triage"
      },
      {
        repo_name       = "additional-repo"
        repo_permission = "push"
    }]
    team_member_list = [{
      team_member_username = "jay-rodriguez-bb"
      team_member_role     = "maintainer"
      },
      {
        team_member_username = "tboker"
        team_member_role     = "member"
    }]
  }
}

#---------------------------------------------------------------------------------------------
# Repositories | (ie. Repositories)
#---------------------------------------------------------------------------------------------
# Repositories > "repo-name" > Settings > General
#-----------------------------------------
repo_map = {
  test-repo = {
    repo_name                   = "test-repo"
    repo_auto_init              = true
    repo_has_issues             = true
    repo_has_wiki               = false
    repo_has_projects           = true
    repo_visibility             = "public"
    repo_allow_rebase_merge     = false
    repo_allow_squash_merge     = true
    repo_allow_merge_commit     = true
    repo_delete_branch_on_merge = true
    repo_is_template            = true
    repo_gitignore_template     = "Terraform"
    repo_license_template       = "mit"
    repo_topics                 = ["template", "terraform"]
  },
  other-repo = {
    repo_name                   = "other-repo"
    repo_auto_init              = true
    repo_has_issues             = true
    repo_has_wiki               = false
    repo_has_projects           = true
    repo_visibility             = "public"
    repo_allow_rebase_merge     = false
    repo_allow_squash_merge     = true
    repo_allow_merge_commit     = true
    repo_delete_branch_on_merge = true
    repo_is_template            = false
    repo_gitignore_template     = "Terraform"
    repo_license_template       = "mit"
    repo_topics                 = ["terraform"]
  }
}

# repo_map = {
#   testing-repo = {
#     repo_name                   = "testing-repo"
#     repo_auto_init              = true
#     repo_has_issues             = true
#     repo_has_wiki               = false
#     repo_has_projects           = true
#     repo_visibility             = "public"
#     repo_allow_rebase_merge     = false
#     repo_allow_squash_merge     = true
#     repo_allow_merge_commit     = true
#     repo_delete_branch_on_merge = true
#     repo_is_template            = true
#     repo_gitignore_template     = "Terraform"
#     repo_license_template       = "mit"
#     repo_topics                 = ["template", "terraform"]
#     repo_issue_list = {
#       issue1 = {
#         issue_title     = "iac-issue-1"
#         issue_body      = "this is the first iac issue to be created"
#         issue_labels    = ["iac", "documentation"]
#         issue_assignees = ["jay-rodriguez-bb", "DntworryJayshere"]
#       },
#       issue2 = {
#         issue_title     = "iac-issue-2"
#         issue_body      = "this is the second iac issue to be created"
#         issue_labels    = ["iac", "documentation"]
#         issue_assignees = ["DntworryJayshere"]
#       }
#     }
#     repo_file_list = {
#       file = {
#         file_branch              = "main"
#         file_file                = ".gitignore"
#         file_content             = "**/*.tfstate"
#         file_commit_message      = "Managed by Terraform"
#         file_commit_author       = "Terraform User"
#         file_commit_email        = "jay@boxboat.com"
#         file_overwrite_on_create = true
#       }
#     }
#     repo_milestone_list = {
#       milestone = {
#         milestone_title       = "default milestone"
#         milestone_description = "Default milestone"
#         milestone_due_date    = "2022-12-31"
#         milestone_state       = "open"
#       }
#     }
#   },
#   additional-repo = {
#     repo_name                   = "additional-repo"
#     repo_auto_init              = true
#     repo_has_issues             = true
#     repo_has_wiki               = false
#     repo_has_projects           = true
#     repo_visibility             = "public"
#     repo_allow_rebase_merge     = false
#     repo_allow_squash_merge     = true
#     repo_allow_merge_commit     = true
#     repo_delete_branch_on_merge = true
#     repo_is_template            = false
#     repo_gitignore_template     = "Terraform"
#     repo_license_template       = "mit"
#     repo_topics                 = ["terraform"]
#     repo_issue_list = {
#       issue1 = {
#         issue_title     = "iac-issue-1"
#         issue_body      = "this is the first iac issue to be created"
#         issue_labels    = ["iac", "documentation"]
#         issue_assignees = ["jay-rodriguez-bb", "DntworryJayshere"]
#       }
#     }
#     repo_file_list = {
#       file = {
#         file_branch              = "main"
#         file_file                = ".gitignore"
#         file_content             = "**/*.tfstate"
#         file_commit_message      = "Managed by Terraform"
#         file_commit_author       = "Terraform User"
#         file_commit_email        = "jay@boxboat.com"
#         file_overwrite_on_create = true
#       }
#     }
#     repo_milestone_list = {
#       milestone = {
#         milestone_title       = "default milestone"
#         milestone_description = "Default milestone"
#         milestone_due_date    = "2022-12-31"
#         milestone_state       = "open"
#       }
#     }
#   }
# }

#---------------------------------------------------------------
# milestone_title    = "iac-milestone"
# milestone_desc     = "this is the primary iac milestone"
# milestone_due_date = "2022-12-31"

#---------------------------------------------------------------
