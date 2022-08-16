variable "machine_ip" {
  type      = string
  sensitive = true
}

resource "github_actions_secret" "machine_ip" {
  for_each        = toset(data.github_repositories.la_catalog.names)
  repository      = each.key
  secret_name     = "machine_ip"
  plaintext_value = var.machine_ip
}

variable "machine_user" {
  type      = string
  sensitive = true
}

resource "github_actions_secret" "machine_user" {
  for_each        = toset(data.github_repositories.la_catalog.names)
  repository      = each.key
  secret_name     = "machine_user"
  plaintext_value = var.machine_user
}

variable "mongo_user" {
  type      = string
  sensitive = true
}

resource "github_actions_secret" "mongo_user" {
  for_each        = toset(data.github_repositories.la_catalog.names)
  repository      = each.key
  secret_name     = "mongo_user"
  plaintext_value = var.mongo_user
}

variable "mongo_pass" {
  type      = string
  sensitive = true
}

resource "github_actions_secret" "mongo_pass" {
  for_each        = toset(data.github_repositories.la_catalog.names)
  repository      = each.key
  secret_name     = "mongo_pass"
  plaintext_value = var.mongo_pass
}

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

variable "rabbit_user" {
  type      = string
  sensitive = true
}

resource "github_actions_secret" "rabbit_user" {
  for_each        = toset(data.github_repositories.la_catalog.names)
  repository      = each.key
  secret_name     = "rabbit_user"
  plaintext_value = var.rabbit_user
}

variable "rabbit_pass" {
  type      = string
  sensitive = true
}

resource "github_actions_secret" "rabbit_pass" {
  for_each        = toset(data.github_repositories.la_catalog.names)
  repository      = each.key
  secret_name     = "rabbit_pass"
  plaintext_value = var.rabbit_pass
}

variable "influx_user" {
  type      = string
  sensitive = true
}

resource "github_actions_secret" "influx_user" {
  for_each        = toset(data.github_repositories.la_catalog.names)
  repository      = each.key
  secret_name     = "influx_user"
  plaintext_value = var.influx_user
}

variable "influx_pass" {
  type      = string
  sensitive = true
}

resource "github_actions_secret" "influx_pass" {
  for_each        = toset(data.github_repositories.la_catalog.names)
  repository      = each.key
  secret_name     = "influx_pass"
  plaintext_value = var.influx_pass
}