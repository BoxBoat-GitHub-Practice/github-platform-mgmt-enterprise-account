variable "repo_name" {}
variable "repo_description" {}
variable "repo_auto_init" {}
variable "repo_has_issues" {}
variable "repo_has_wiki" {}
variable "repo_has_projects" {}
variable "repo_visibility" {}
variable "repo_allow_auto_merge" {}
variable "repo_allow_update_branch" {}
variable "repo_allow_merge_commit" {}
variable "repo_allow_squash_merge" {}
variable "repo_allow_rebase_merge" {}
variable "repo_delete_branch_on_merge" {}
variable "repo_is_template" {}
variable "repo_gitignore_template" {}
variable "repo_license_template" {}
variable "repo_topics" {}
variable "repo_vulnerability_alerts" {}
variable "repo_ignore_vulnerability_alerts_during_read" {}
variable "repo_advanced_security_status" {}
variable "repo_secret_scanning_status" {}
variable "repo_secret_scanning_push_protection_status" {}
variable "is_enterprise_account" {
    type = bool
    default = false
    description = "Whether the github organization is under an enterprise account."
}