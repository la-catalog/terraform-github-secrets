variable "machine_ip" {
  type      = string
  sensitive = true
}

variable "machine_user" {
  type      = string
  sensitive = true
}

resource "github_actions_secret" "machine_ip" {
  for_each        = toset(data.github_repositories.la_catalog.names)
  repository      = each.key
  secret_name     = "machine_ip"
  plaintext_value = var.machine_ip
}

resource "github_actions_secret" "machine_user" {
  for_each        = toset(data.github_repositories.la_catalog.names)
  repository      = each.key
  secret_name     = "machine_user"
  plaintext_value = var.machine_user
}