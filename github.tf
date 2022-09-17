resource "github_actions_secret" "gh_token" {
  for_each        = toset(data.github_repositories.terraform.names)
  repository      = each.key
  secret_name     = "gh_token"
  plaintext_value = var.gh_token
}