variable "name" { type = string }
variable "image" { type = string }
variable "server_type" { type = string }
variable "location" { type = string }
variable "ssh_keys" { type = list(string) }
variable "backups" { type = bool }
variable "firewall_ids" { type = list(string) }
variable "user_data_file" { type = string }

variable "root_username" {
  type    = string
  default = "root"
}

variable "root_user_email" {
  type    = string
  default = ""
}

variable "root_user_password" {
  type      = string
  default   = ""
  sensitive = true
}

variable "private_key_uuid" {
  type        = string
  description = "UUID of the private key for Coolify server access"
  default     = ""
}

variable "networks" {
  description = "List of internal Hetzner networks to attach the server to"
  type = list(object({
    network_id = string
    ip         = optional(string)
    alias_ips  = optional(list(string))
  }))
  default = []
}