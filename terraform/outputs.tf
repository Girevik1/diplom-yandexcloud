output "internal_ip_address_timerkhanov_site" {
  value = yandex_compute_instance.mashine[0].network_interface.0.ip_address
}

output "external_ip_address_timerkhanov_site" {
  value = yandex_compute_instance.mashine[0].network_interface.0.nat_ip_address
}

output "internal_ip_address_db01_timerkhanov_site" {
  value = yandex_compute_instance.mashine[1].network_interface.0.ip_address
}

output "external_ip_address_db01_timerkhanov_site" {
  value = yandex_compute_instance.mashine[1].network_interface.0.nat_ip_address
}

output "internal_ip_address_db02_timerkhanov_site" {
  value = yandex_compute_instance.mashine[2].network_interface.0.ip_address
}

output "external_ip_address_db02_timerkhanov_site" {
  value = yandex_compute_instance.mashine[2].network_interface.0.nat_ip_address
}
/*
output "internal_ip_address_app_timerkhanov_site" {
  value = "${yandex_compute_instance.mashine[3].network_interface.0.ip_address}"
}
output "external_ip_address_app_timerkhanov_site" {
  value = "${yandex_compute_instance.mashine[3].network_interface.0.nat_ip_address}"
}
output "internal_ip_address_gitlab_timerkhanov_site" {
  value = "${yandex_compute_instance.mashine[4].network_interface.0.ip_address}"
}
output "external_ip_address_gitlab_timerkhanov_site" {
  value = "${yandex_compute_instance.mashine[4].network_interface.0.nat_ip_address}"
}
output "internal_ip_address_runner_timerkhanov_site" {
  value = "${yandex_compute_instance.mashine[5].network_interface.0.ip_address}"
}
output "external_ip_address_runner_timerkhanov_site" {
  value = "${yandex_compute_instance.mashine[5].network_interface.0.nat_ip_address}"
}
output "internal_ip_address_monitoring_timerkhanov_site" {
  value = "${yandex_compute_instance.mashine[6].network_interface.0.ip_address}"
}
output "external_ip_address_monitoring_timerkhanov_site" {
  value = "${yandex_compute_instance.mashine[6].network_interface.0.nat_ip_address}"
}
*/
