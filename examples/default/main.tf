module "gitlab_project_integration_telegram" {
  source = "../../"

  confidential_issues_events = false
  confidential_note_events   = false
  issues_events              = true
  merge_requests_events      = true
  note_events                = false
  pipeline_events            = true
  project                    = data.gitlab_project.this.id
  push_events                = false
  room                       = "@example_bot"
  tag_push_events            = true
  token                      = "8133964250:szFpVy9sd4AqJHHYF47FRpbfaJs44MPhmxX" # gitleaks:allow
  wiki_page_events           = false
}
