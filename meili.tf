variable "meili_key" {
  type      = string
  sensitive = true
}

resource "github_actions_secret" "meili_key" {
  for_each        = toset(["terraform-services", "terraform-github-secrets"])
  repository      = each.key
  secret_name     = "meili_key"
  plaintext_value = var.meili_key
}