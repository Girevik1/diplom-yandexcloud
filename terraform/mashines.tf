resource "yandex_compute_instance" "mashine" {
  count    = 7
  zone     = "ru-central1-a"
  hostname = var.vm[count.index]

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = var.ubu
      type     = "network-hdd"
      size     = "30"
    }
  }

  network_interface {
    subnet_id = yandex_vpc_subnet.default-subnet[0].id
    nat       = true
  }

  metadata = {
    ssh-keys = "art:${file("~/.ssh/id_rsa.pub")}"
  }
}
