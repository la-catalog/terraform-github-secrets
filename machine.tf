variable "machine_ip" {
  type      = string
  sensitive = true
}

resource "github_actions_secret" "machine_ip" {
  for_each        = toset(["terraform-services", "terraform-github-secrets"])
  repository      = each.key
  secret_name     = "machine_ip"
  plaintext_value = var.machine_ip
}