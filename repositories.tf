# creates and manages repositories
module "iac_repo" {
  source                                       = "./modules/repositories"
  for_each                                     = var.repo_map
  repo_name                                    = each.value.repo_name
  repo_description                             = each.value.repo_description
  repo_auto_init                               = each.value.repo_auto_init
  repo_has_issues                              = each.value.repo_has_issues
  repo_has_wiki                                = each.value.repo_has_wiki
  repo_has_projects                            = each.value.repo_has_projects
  repo_visibility                              = each.value.repo_visibility
  repo_allow_merge_commit                      = each.value.repo_allow_merge_commit
  repo_allow_rebase_merge                      = each.value.repo_allow_rebase_merge
  repo_delete_branch_on_merge                  = each.value.repo_delete_branch_on_merge
  repo_allow_squash_merge                      = each.value.repo_allow_squash_merge
  repo_is_template                             = each.value.repo_is_template
  repo_gitignore_template                      = each.value.repo_gitignore_template
  repo_license_template                        = each.value.repo_license_template
  repo_topics                                  = each.value.repo_topics
  repo_vulnerability_alerts                    = each.value.repo_vulnerability_alerts
  repo_ignore_vulnerability_alerts_during_read = each.value.repo_ignore_vulnerability_alerts_during_read
  repo_advanced_security_status                = each.value.repo_advanced_security_status
  repo_secret_scanning_status                  = each.value.repo_secret_scanning_status
  repo_secret_scanning_push_protection_status  = each.value.repo_secret_scanning_push_protection_status
}

# # creates and manages repo issues
module "iac_repo_issue" {
  source   = "./modules/repositories/issues"
  for_each = module.iac_repo
  # count                         = each.value.repo_has_issues ? 1 : 0
  repository_name = each.value.repository_name
  repo_issue_list = var.repo_map[each.value.repository_name].repo_issue_list
}

# # creates and manages repo milestones
module "iac_repo_milestones" {
  source              = "./modules/repositories/milestones"
  for_each            = module.iac_repo
  repository_name     = each.value.repository_name
  repository_owner    = split("/", "${each.value.repository_full_name}")[0]
  repo_milestone_list = var.repo_map[each.value.repository_name].repo_milestone_list
}

# # creates and manages repo files
module "iac_repo_files" {
  source          = "./modules/repositories/files"
  for_each        = module.iac_repo
  repository_name = each.value.repository_name
  repo_file_list  = var.repo_map[each.value.repository_name].repo_file_list
}

# # creates and manages repo environments
# module "iac_repo_environments" {
#   source          = "./modules/repositories/environment"
#   for_each        = module.iac_repo
#   repository_name = each.value.repository_name
#   team_id         = module.iac_teams["release-engineers"].team_id
#   # repo_file_list  = var.repo_map[each.value.repository_name].repo_file_list
# }
