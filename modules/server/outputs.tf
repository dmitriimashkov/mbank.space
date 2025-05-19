output "ipv4_address" {
  value = hcloud_server.server.ipv4_address
}

output "id" {
  value = hcloud_server.server.id
}

output "private_ip" {
  value = [for net in hcloud_server.server.network : net.ip]
}
