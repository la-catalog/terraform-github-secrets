resource "github_issue_label" "bug" {
  for_each   = toset(data.github_repositories.la_catalog.names)
  repository = each.key
  name       = "bug"
  color      = "d73a4a"
  description = "Something isn't working"
}

resource "github_issue_label" "documentation" {
  for_each   = toset(data.github_repositories.la_catalog.names)
  repository = each.key
  name       = "documentation"
  color      = "0075ca"
  description = "Improvements or additions to documentation"
}

resource "github_issue_label" "enhancement" {
  for_each   = toset(data.github_repositories.la_catalog.names)
  repository = each.key
  name       = "enhancement"
  color      = "a2eeef"
  description = "New feature or request"
}

resource "github_issue_label" "help_wanted" {
  for_each   = toset(data.github_repositories.la_catalog.names)
  repository = each.key
  name       = "help wanted"
  color      = "008672"
  description = "Extra attention is needed"
}

resource "github_issue_label" "question" {
  for_each   = toset(data.github_repositories.la_catalog.names)
  repository = each.key
  name       = "question"
  color      = "d876e3"
  description = "Further information is requested"
}