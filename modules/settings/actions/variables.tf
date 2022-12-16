variable "org_allowed_actions" {
  type        = string
  description = "The permissions policy that controls the actions that are allowed to run. Can be one of: all, local_only, or selected."
}
variable "org_actions_enabled_repositories" {
  type        = string
  description = "The policy that controls the repositories in the organization that are allowed to run GitHub Actions. Can be one of: all, none, or selected"
}
variable "org_actions_github_owned_allowed" {
  type        = bool
  default     = true
  description = "Whether GitHub-owned actions are allowed in the organization."
}
variable "org_actions_verified_allowed" {
  type        = bool
  default     = true
  description = "Whether actions in GitHub Marketplace from verified creators are allowed."
}
variable "org_actions_allowed_patterns" {
  type        = list(any)
  default     = ["boxboat/terraform-azure-actions@*"]
  description = "Specifies a list of string-matching patterns to allow specific action(s)."
}
