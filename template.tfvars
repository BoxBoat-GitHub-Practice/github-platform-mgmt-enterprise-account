#---------------------------------------------------------------------------------------------
# Settings | (ie. Organization Settings)
#---------------------------------------------------------------------------------------------
org_billing_email                           = "jay@boxboat.com"
org_name                                    = "boxboat-github-practice"
org_description                             = "This is the GitHub Practice Testing Organization that can be applied at scale"
org_company                                 = "BoxBoat"
org_email                                   = "jay@boxboat.com"
org_location                                = "USA"
org_default_repository_permission           = "read"
org_advanced_security_enabled_for_new_repositories                  = false
org_dependabot_security_updates_enabled_for_new_repositories        = false
org_dependabot_alerts_enabled_for_new_repositories                  = false
org_dependency_graph_enabled_for_new_repositories                   = false
org_secret_scanning_enabled_for_new_repositories                    = false
org_secret_scanning_push_protection_enabled_for_new_repositories    = false

#---------------------------------------------------------------------------------------------
# Settings > Actions | (ie Organization Actions Settings) 
#---------------------------------------------------------------------------------------------
org_allowed_actions                     = "selected"
org_actions_enabled_repositories        = "all"

#---------------------------------------------------------------------------------------------
# People > Members | (ie Organization Members)
#---------------------------------------------------------------------------------------------
org_member_map = {
    JayRodriguez = { 
    org_membership_username = "jay-rodriguez-bb"
    org_membership_role     = "admin"
    },
    DanKoch = {
    org_membership_username = "dkoch84"
    org_membership_role     = "admin"
    },
    Personal = {
    org_membership_username = "DntworryJayshere"
    org_membership_role     = "member"
    },
    TomBoker = {
    org_membership_username = "tboker"
    org_membership_role     = "member"
    }
}

#---------------------------------------------------------------------------------------------
# Teams | (ie Organization Teams/Settings/Members)
#---------------------------------------------------------------------------------------------
teams_map = {
    dev-team            = {
    team_name                   = "dev-team",
    team_desc                   = "team of developers",
    team_privacy                = "closed",
    parent_team_id              = null,
    team_repo_permission        = null,
    team_member_list    = [{ 
        team_member_username    = "jay-rodriguez-bb"
        team_member_role        = "maintainer"
    },
    {
        team_member_username    = "DntworryJayshere"
        team_member_role        = "member"
    }]
    },
    release-engineers   = {
    team_name                   = "release-engineers",
    team_desc                   = "team required for sod and aiding in the release process",
    team_privacy                = "closed",
    parent_team_id              = null,
    team_repo_permission        = "triage",
    team_member_list    = [{ 
        team_member_username    = "jay-rodriguez-bb"
        team_member_role        = "maintainer"
    },
    {
        team_member_username    = "tboker"
        team_member_role        = "member"
    }]
    }
}

#---------------------------------------------------------------------------------------------
# Repositories 
#---------------------------------------------------------------------------------------------
repo_name                   = "testing-repo"
repo_visibility             = "public"
repo_allow_rebase_merge     = true
repo_allow_squash_merge     = true
repo_allow_merge_commit     = true
repo_delete_branch_on_merge = true
repo_is_template            = true
repo_gitignore_template     = "Terraform"
repo_license_template       = "mit"
repo_topics                 = ["template", "terraform"]

#---------------------------------------------------------------
milestone_title         = "iac-milestone"
milestone_desc          = "this is the primary iac milestone"
milestone_due_date      = "2022-12-31"

#---------------------------------------------------------------
issue_map = {
    issue-1 = { 
    issue_title             = "iac-issue-1"
    issue_body              = "this is the first iac issue to be created"
    issue_labels            = ["iac", "documentation"]
    issue_assignees         = ["jay-rodriguez-bb","DntworryJayshere"]
    issue_has_milestone     = false
    },
    issue-2 = { 
    issue_title             = "iac-issue-2"
    issue_body              = "this is the second iac issue to be created"
    issue_labels            = ["iac", "documentation"]
    issue_assignees         = ["DntworryJayshere"]
    issue_has_milestone     = false
    },
    issue-3 = { 
    issue_title             = "iac-issue-3"
    issue_body              = "this is the third iac issue to be created"
    issue_labels            = ["iac", "documentation"]
    issue_assignees         = ["DntworryJayshere"]
    issue_has_milestone     = false
    }
}


# collaborator_username   = ""
# invitee_token           = ""

# org_project_name        = "GitHub Practice Org Project"
# org_project_body        = "This is an organization project"
# repo_project_name       = "GitHub Practice Repo Project"
# repo_project_body       = "This is a repo project"