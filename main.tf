terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

variable "gh_token" {
  type      = string
  sensitive = true
}

provider "github" {
  token         = var.gh_token
  owner         = "la-catalog"
  read_delay_ms = 1000
}

data "github_repositories" "service" {
  query = "repo:la-catalog/terraform-services"
}

data "github_repositories" "terraform" {
  query = "org:la-catalog topic:terraform"
}