resource "github_actions_secret" "github_token" {
  for_each        = toset(data.github_repositories.terraform.names)
  repository      = each.key
  secret_name     = "gh_token"
  plaintext_value = var.github_token
}