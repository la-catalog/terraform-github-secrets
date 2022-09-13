variable "mongo_user" {
  type      = string
  sensitive = true
}

variable "mongo_pass" {
  type      = string
  sensitive = true
}

resource "github_actions_secret" "mongo_user" {
  for_each        = toset(data.github_repositories.service.names)
  repository      = each.key
  secret_name     = "mongo_user"
  plaintext_value = var.mongo_user
}

resource "github_actions_secret" "mongo_pass" {
  for_each        = toset(data.github_repositories.service.names)
  repository      = each.key
  secret_name     = "mongo_pass"
  plaintext_value = var.mongo_pass
}