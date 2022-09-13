variable "rabbit_user" {
  type      = string
  sensitive = true
}

variable "rabbit_pass" {
  type      = string
  sensitive = true
}

resource "github_actions_secret" "rabbit_user" {
  for_each        = toset(["terraform-services", "terraform-github-secrets"])
  repository      = each.key
  secret_name     = "rabbit_user"
  plaintext_value = var.rabbit_user
}

resource "github_actions_secret" "rabbit_pass" {
  for_each        = toset(["terraform-services", "terraform-github-secrets"])
  repository      = each.key
  secret_name     = "rabbit_pass"
  plaintext_value = var.rabbit_pass
}