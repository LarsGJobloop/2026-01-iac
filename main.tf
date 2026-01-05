terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "6.9.0"
    }
  }
}

variable "github_token" {
  description = "This is the token to use for authentication against GitHub"
  sensitive = true
  type = string
}

provider "github" {
  token = var.github_token
}

resource "github_repository" "remote_repository" {
  name = "2026-01-iac"
  description = "Introduction repository for Infrastructure as Code"
  visibility = "public"

  topics = [
    "iac"
  ]
}

resource "github_repository_collaborator" "a_repo_collaborator" {
  repository = github_repository.remote_repository.name
  username   = "zabronax"
  permission = "admin"
}

output "remote_repo_details" {
  value = github_repository.remote_repository
}
