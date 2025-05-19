terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.45"
    }
    coolify = {
      source  = "sierrajc/coolify"
      version = "0.9.0"
    }
  }
}

resource "hcloud_server" "server" {
  name         = var.name
  image        = var.image
  server_type  = var.server_type
  location     = var.location
  ssh_keys     = var.ssh_keys
  backups      = var.backups
  firewall_ids = var.firewall_ids

  user_data = var.user_data_file != "" ? templatefile(var.user_data_file, {
    ROOT_USERNAME      = var.root_username,
    ROOT_USER_EMAIL    = var.root_user_email,
    ROOT_USER_PASSWORD = var.root_user_password
  }) : null

    dynamic "network" {
    for_each = var.networks
    content {
      network_id = network.value.network_id
      ip         = try(network.value.ip, null)
      alias_ips  = try(network.value.alias_ips, null)
    }
  }
}

