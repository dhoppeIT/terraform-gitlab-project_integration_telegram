resource "gitlab_project_integration_telegram" "this" {
  confidential_issues_events = var.confidential_issues_events
  confidential_note_events   = var.confidential_note_events
  issues_events              = var.issues_events
  merge_requests_events      = var.merge_requests_events
  note_events                = var.note_events
  pipeline_events            = var.pipeline_events
  project                    = var.project
  push_events                = var.push_events
  room                       = var.room
  tag_push_events            = var.tag_push_events
  token                      = var.token
  wiki_page_events           = var.wiki_page_events

  branches_to_be_notified      = var.branches_to_be_notified
  notify_only_broken_pipelines = var.notify_only_broken_pipelines
}

moved {
  from = gitlab_integration_telegram.this
  to   = gitlab_project_integration_telegram.this
}
