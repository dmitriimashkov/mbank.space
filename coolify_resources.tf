provider "coolify" {
  endpoint = var.coolify_url
  token    = var.coolify_token
}

resource "coolify_project" "monteexchange" {
  name        = "monteexchange"
  description = "Managed by Terraform"
}

# data "coolify_application" "example" {
#   uuid = "abc123"
# }

output "project_uuid" {
  value = coolify_project.monteexchange
}

