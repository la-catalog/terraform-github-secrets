variable "influx_user" {
  type      = string
  sensitive = true
}

variable "influx_pass" {
  type      = string
  sensitive = true
}

resource "github_actions_secret" "influx_user" {
  for_each        = toset(["terraform-services", "terraform-github-secrets"])
  repository      = each.key
  secret_name     = "influx_user"
  plaintext_value = var.influx_user
}

resource "github_actions_secret" "influx_pass" {
  for_each        = toset(["terraform-services", "terraform-github-secrets"])
  repository      = each.key
  secret_name     = "influx_pass"
  plaintext_value = var.influx_pass
}