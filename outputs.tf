# 📤 Outputs
output "coolify_server_ip" {
  value = module.coolify_server.ipv4_address
}

# output "app_server_ip" {
#   value = module.app_server.ipv4_address
# }
#
# output "postgres_server_ip" {
#   value = module.postgres_server.ipv4_address
# }
#
# output "redis_server_ip" {
#   value = module.redis_celery_server.ipv4_address
# }
#
# output "app_internal_ip" {
#   value = module.app_server.private_ip
# }
#
# output "postgres_internal_ip" {
#   value = module.postgres_server.private_ip
# }
#
# output "celery_internal_ip" {
#   value = module.redis_celery_server.private_ip
# }