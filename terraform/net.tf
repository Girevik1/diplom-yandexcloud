resource "yandex_vpc_network" "default" {
  name = "default-net"
}

resource "yandex_vpc_subnet" "default-subnet" {
  count          = 2
  name           = "subnet-${count.index}"
  v4_cidr_blocks = [var.cidrs[count.index]]
  zone           = var.zones[count.index]
  network_id     = yandex_vpc_network.default.id
}

resource "yandex_vpc_address" "ip" {
  name = "timerkhanov.site"

  external_ipv4_address {
    zone_id = "ru-central1-a"
  }
}
