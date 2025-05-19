variable "hcloud_token" {
  description = "Hetzner Cloud API token"
  type        = string
  sensitive   = true
}

variable "coolify_token" {
  description = "coolify token"
  type        = string
  sensitive   = true
}

variable "coolify_url" {
  description = "coolify token"
  type        = string
  sensitive   = true
}

variable "server_type" {
  description = "Type of Hetzner Cloud server"
  type        = string
}

variable "server_location" {
  description = "Location of the server (e.g., nbg1, fsn1, hel1)"
  type        = string
}

# variable "server_name_postgres" {
#   description = "Name of the Hetzner Cloud server"
#   type        = string
# }
#
# variable "server_name_redis" {
#   description = "Name of the Hetzner Cloud server"
#   type        = string
# }
# variable "server_name_app" {
#   description = "Name of the Hetzner Cloud server"
#   type        = string
# }

variable "ssh_public_key" {
  description = "Path to the SSH public key file"
  type        = string
}

# variable "db_user" {
#   description = "Database username"
#   type        = string
# }
#
# variable "db_password" {
#   description = "Database user password"
#   type        = string
#   sensitive   = true
# }
#
# variable "db_name" {
#   description = "Database name"
#   type        = string
# }

variable "ssh_private_key" {
  description = "Path to the SSH private key"
  type        = string
  sensitive   = true
}

variable "coolify_server_name" {
    description = "Name of the Hetzner Cloud server"
    type        = string
}
// env for coolify
variable "root_username" {
  type        = string
  description = "Root user for Coolify"
}

variable "root_user_email" {
  type        = string
  description = "Root user email for Coolify"
}

variable "root_user_password" {
  type        = string
  sensitive   = true
  description = "Root user password for Coolify"
}