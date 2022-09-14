resource "local_file" "inventory" {
  content = <<-DOC
    
    [revproxy]
    timerkhanov.site ansible_host=${yandex_compute_instance.mashine[0].network_interface.0.nat_ip_address} email=girevik1988@gmail.com domain=timerkhanov.site
    
    [db]
    db01.timerkhanov.site ansible_host=${yandex_compute_instance.mashine[1].network_interface.0.nat_ip_address}
    db02.timerkhanov.site ansible_host=${yandex_compute_instance.mashine[2].network_interface.0.nat_ip_address}

    [db01]
    db01.timerkhanov.site ansible_host=${yandex_compute_instance.mashine[1].network_interface.0.nat_ip_address}

    [db02]
    db02.timerkhanov.site ansible_host=${yandex_compute_instance.mashine[2].network_interface.0.nat_ip_address}
   
    DOC

  filename = "../ansible/inventory.yml"

  depends_on = [
    yandex_compute_instance.mashine[0],
    yandex_compute_instance.mashine[1],
    yandex_compute_instance.mashine[2]
  ]
}
