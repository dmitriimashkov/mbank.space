resource "hcloud_firewall" "coolify_firewall" {
  name = "coolify-firewall"

  rule {
    direction = "in"
    protocol  = "tcp"
    port = "22"  # Allow SSH
    source_ips = ["0.0.0.0/0", "::/0"]
  }

  rule {
    direction = "in"
    protocol  = "tcp"
    port = "80"  # Allow SSH
    source_ips = ["0.0.0.0/0", "::/0"]
  }

    rule {
    direction = "in"
    protocol  = "tcp"
    port = "8000"  # Allow SSH
    source_ips = ["0.0.0.0/0", "::/0"]
  }

  rule {
    direction = "in"
    protocol  = "tcp"
    port = "443"  # Allow SSH
    source_ips = ["0.0.0.0/0", "::/0"]
  }

}

# resource "hcloud_firewall" "postgres_firewall" {
#   name = "postgres-firewall"
#
#   rule {
#     direction = "in"
#     protocol  = "tcp"
#     port = "22"  # Allow SSH
#     source_ips = ["0.0.0.0/0", "::/0"]
#   }
# }
#
# resource "hcloud_firewall" "app_firewall" {
#   name = "app-firewall"
#
#   rule {
#     direction = "in"
#     protocol  = "tcp"
#     port = "22"  # Allow SSH
#     source_ips = ["0.0.0.0/0", "::/0"]
#   }
#   rule {
#     direction = "in"
#     protocol  = "tcp"
#     port = "80"  # Allow SSH
#     source_ips = ["0.0.0.0/0", "::/0"]
#   }
#   rule {
#     direction = "in"
#     protocol  = "tcp"
#     port = "443"  # Allow SSH
#     source_ips = ["0.0.0.0/0", "::/0"]
#   }
# }
#
# resource "hcloud_firewall" "redis_firewall" {
#   name = "redis-firewall"
#
#   rule {
#     direction = "in"
#     protocol  = "tcp"
#     port = "22"  # Allow SSH
#     source_ips = ["0.0.0.0/0", "::/0"]
#   }
# }
