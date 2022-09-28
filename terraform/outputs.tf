output "internal_ip_address_timerkhanov_site" {
  value = yandex_compute_instance.machine[0].network_interface.0.ip_address
}

output "external_ip_address_timerkhanov_site" {
  value = yandex_compute_instance.machine[0].network_interface.0.nat_ip_address
}

output "internal_ip_address_db01_timerkhanov_site" {
  value = yandex_compute_instance.machine[1].network_interface.0.ip_address
}

output "external_ip_address_db01_timerkhanov_site" {
  value = yandex_compute_instance.machine[1].network_interface.0.nat_ip_address
}

output "internal_ip_address_db02_timerkhanov_site" {
  value = yandex_compute_instance.machine[2].network_interface.0.ip_address
}

output "external_ip_address_db02_timerkhanov_site" {
  value = yandex_compute_instance.machine[2].network_interface.0.nat_ip_address
}

output "internal_ip_address_app_timerkhanov_site" {
  value = yandex_compute_instance.machine[3].network_interface.0.ip_address
}
output "external_ip_address_app_timerkhanov_site" {
  value = yandex_compute_instance.machine[3].network_interface.0.nat_ip_address
}
/*
output "internal_ip_address_gitlab_timerkhanov_site" {
  value = "${yandex_compute_instance.machine[4].network_interface.0.ip_address}"
}
output "external_ip_address_gitlab_timerkhanov_site" {
  value = "${yandex_compute_instance.machine[4].network_interface.0.nat_ip_address}"
}
output "internal_ip_address_runner_timerkhanov_site" {
  value = "${yandex_compute_instance.machine[5].network_interface.0.ip_address}"
}
output "external_ip_address_runner_timerkhanov_site" {
  value = "${yandex_compute_instance.machine[5].network_interface.0.nat_ip_address}"
}
*/
output "internal_ip_address_monitoring_timerkhanov_site" {
  value = yandex_compute_instance.machine[6].network_interface.0.ip_address
}

output "external_ip_address_monitoring_timerkhanov_site" {
  value = yandex_compute_instance.machine[6].network_interface.0.nat_ip_address
}

