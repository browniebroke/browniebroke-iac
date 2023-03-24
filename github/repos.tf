locals {
  repos = {
    browniebroke_iac = {
      name            = "browniebroke-iac"
      topics          = ["devops", "terraform", "iac"]
      description     = "Describe my infrastructure as code"
      homepage_url    = null
      has_discussions = null
    }
    browniebroke_dot_com = {
      name            = "browniebroke.com"
      topics          = ["blog", "gatsby", "gatsbyjs"]
      description     = "Personal blog"
      homepage_url    = "https://browniebroke.com"
      has_discussions = false
    }
  }
}

resource "github_repository" "repos" {
  for_each     = local.repos
  name         = each.value.name
  topics       = each.value.topics
  description  = each.value.description
  homepage_url = each.value.homepage_url

  visibility = "public"

  delete_branch_on_merge = true
  allow_update_branch    = true

  has_issues           = true
  has_discussions      = coalesce(each.value.has_discussions, true)
  vulnerability_alerts = true
  has_projects         = false
  has_wiki             = false
  has_downloads        = false
}
