# terraform-gitlab-project_integration_telegram

Terraform module to manage the following GitLab resources:

* gitlab_project_integration_telegram

## Usage

Copy and paste the following code snippet to your Terraform configuration,
specify the required variables and run the command `terraform init`.

```hcl
module "gitlab_project_integration_telegram" {
  source  = "gitlab.com/terraform-child-modules-48151/terraform-gitlab-project-integration-telegram/local"
  version = "2.0.0"

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
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
| ---- | ------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_gitlab"></a> [gitlab](#requirement\_gitlab) | ~> 19.0 |

## Providers

| Name | Version |
| ---- | ------- |
| <a name="provider_gitlab"></a> [gitlab](#provider\_gitlab) | ~> 19.0 |

## Modules

No modules.

## Resources

| Name | Type |
| ---- | ---- |
| [gitlab_project_integration_telegram.this](https://registry.terraform.io/providers/gitlabhq/gitlab/latest/docs/resources/project_integration_telegram) | resource |

## Inputs

| Name | Description | Type | Default | Required |
| ---- | ----------- | ---- | ------- | :------: |
| <a name="input_branches_to_be_notified"></a> [branches\_to\_be\_notified](#input\_branches\_to\_be\_notified) | Branches to send notifications for | `string` | `"default"` | no |
| <a name="input_confidential_issues_events"></a> [confidential\_issues\_events](#input\_confidential\_issues\_events) | Enable notifications for confidential issues events | `bool` | n/a | yes |
| <a name="input_confidential_note_events"></a> [confidential\_note\_events](#input\_confidential\_note\_events) | Enable notifications for confidential note events | `bool` | n/a | yes |
| <a name="input_issues_events"></a> [issues\_events](#input\_issues\_events) | Enable notifications for issues events | `bool` | n/a | yes |
| <a name="input_merge_requests_events"></a> [merge\_requests\_events](#input\_merge\_requests\_events) | Enable notifications for merge requests events | `bool` | n/a | yes |
| <a name="input_note_events"></a> [note\_events](#input\_note\_events) | Enable notifications for note events | `bool` | n/a | yes |
| <a name="input_notify_only_broken_pipelines"></a> [notify\_only\_broken\_pipelines](#input\_notify\_only\_broken\_pipelines) | Send notifications for broken pipelines | `bool` | `true` | no |
| <a name="input_pipeline_events"></a> [pipeline\_events](#input\_pipeline\_events) | Enable notifications for pipeline events | `bool` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | The ID or full path of the project to integrate with Telegram | `string` | n/a | yes |
| <a name="input_push_events"></a> [push\_events](#input\_push\_events) | Enable notifications for push events | `bool` | n/a | yes |
| <a name="input_room"></a> [room](#input\_room) | Unique identifier for the target chat or the username of the target channel | `string` | n/a | yes |
| <a name="input_tag_push_events"></a> [tag\_push\_events](#input\_tag\_push\_events) | Enable notifications for tag push event | `bool` | n/a | yes |
| <a name="input_token"></a> [token](#input\_token) | The Telegram bot token | `string` | n/a | yes |
| <a name="input_wiki_page_events"></a> [wiki\_page\_events](#input\_wiki\_page\_events) | Enable notifications for wiki page events | `bool` | n/a | yes |

## Outputs

| Name | Description |
| ---- | ----------- |
| <a name="output_id"></a> [id](#output\_id) | The ID of this Terraform resource |
<!-- END_TF_DOCS -->

## Authors

Created and maintained by [Dennis Hoppe](https://gitlab.com/dhoppeIT).

## License

Apache 2 licensed. See [LICENSE](LICENSE) for full details.
