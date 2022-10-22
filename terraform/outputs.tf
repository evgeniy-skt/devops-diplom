# output "vm_proxy_private" {
#   value       = yandex_compute_instance.revproxy.network_interface.0.ip_address
#   description = "Private IP addresses on vm_gitlab"
# }
#
# output "vm_app_private" {
#   value       = yandex_compute_instance.app.network_interface.0.ip_address
#   description = "Private IP addresses on vm_proxy"
# }
#
# output "vm_gitlab_private" {
#   value       = yandex_compute_instance.gitlab.network_interface.0.ip_address
#   description = "Private IP addresses on vm_proxy"
# }
#
# output "vm_monitoring_private" {
#   value       = yandex_compute_instance.monitoring.network_interface.0.ip_address
#   description = "Private IP addresses on vm_proxy"
# }
