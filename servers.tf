# 🚀 Deploy Coolify Server
module "coolify_server" {
  source = "./modules/server"

  name           = var.coolify_server_name
  image          = "ubuntu-22.04"
  server_type    = var.server_type
  location       = var.server_location
  ssh_keys = [hcloud_ssh_key.default.id]
  backups        = true
  firewall_ids = [hcloud_firewall.coolify_firewall.id]
  user_data_file = "${path.module}/cloud-init.yml"

  root_username      = var.root_username
  root_user_email    = var.root_user_email
  root_user_password = var.root_user_password

}
