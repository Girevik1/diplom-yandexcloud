output "ip_timerkhanov_ru" {
  value = yandex_vpc_address.ip.external_ipv4_address[0].address
}
