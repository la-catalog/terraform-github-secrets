resource "github_actions_secret" "terraform_gh_token" {
  for_each        = toset(data.github_repositories.terraform.names)
  repository      = each.key
  secret_name     = "gh_token"
  plaintext_value = var.gh_token
}

resource "github_actions_secret" "python_package_gh_token" {
  for_each        = toset(data.github_repositories.python_package.names)
  repository      = each.key
  secret_name     = "gh_token"
  plaintext_value = var.gh_token
}