resource "github_repository" "browniebroke_iac" {
  name        = "browniebroke-iac"
  topics      = ["devops", "terraform", "iac"]
  description = "Describe my infrastructure as code"

  visibility = "public"

  delete_branch_on_merge = true
  allow_update_branch    = true

  has_issues           = true
  has_discussions      = true
  vulnerability_alerts = true
  has_projects         = false
  has_wiki             = false
  has_downloads        = false
}

resource "github_repository" "browniebroke_dot_com" {
  name         = "browniebroke.com"
  topics       = ["blog", "gatsby", "gatsbyjs"]
  description  = "Personal blog"
  homepage_url = "https://browniebroke.com"

  visibility = "public"

  delete_branch_on_merge = true
  allow_update_branch    = true

  has_issues           = true
  has_discussions      = false
  vulnerability_alerts = true
  has_projects         = false
  has_wiki             = false
  has_downloads        = false
}
