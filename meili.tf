variable "meili_pass" {
  type      = string
  sensitive = true
}

resource "github_actions_secret" "meili_pass" {
  for_each        = toset(data.github_repositories.la_catalog.names)
  repository      = each.key
  secret_name     = "meili_pass"
  plaintext_value = var.meili_pass
}