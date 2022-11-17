# resource "github_repository_project" "iac_repo_project" {
#   name       = var.repo_project_name
#   repository = "${github_repository.iac_repo.name}"
#   body       = var.repo_project_name
# }