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

provider "hcloud" {
  token = var.hcloud_token
}

resource "hcloud_ssh_key" "default" {
  name = "default"
  public_key = file(var.ssh_public_key)
}

resource "tls_private_key" "private_key_algorithm" {
  algorithm = "ED25519"
}

resource "hcloud_ssh_key" "ssh_key" {
  name       = "ssh-key"
  public_key = tls_private_key.private_key_algorithm.public_key_openssh
}

