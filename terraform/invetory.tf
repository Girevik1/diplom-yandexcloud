resource "local_file" "inventory" {
  content = <<-DOC
    
    [revproxy]
    timerkhanov.site ansible_host=${yandex_compute_instance.machine[0].network_interface.0.nat_ip_address} email=girevik1988@gmail.com domain=timerkhanov.site
    
    [db]
    db01.timerkhanov.site ansible_host=${yandex_compute_instance.machine[1].network_interface.0.nat_ip_address}
    db02.timerkhanov.site ansible_host=${yandex_compute_instance.machine[2].network_interface.0.nat_ip_address}

    [db01]
    db01.timerkhanov.site ansible_host=${yandex_compute_instance.machine[1].network_interface.0.nat_ip_address}

    [db02]
    db02.timerkhanov.site ansible_host=${yandex_compute_instance.machine[2].network_interface.0.nat_ip_address}

    [wordpress]
    app.timerkhanov.site ansible_host=${yandex_compute_instance.machine[3].network_interface.0.nat_ip_address} domain=timerkhanov.site 

    [monitoring]
    monitoring.timerkhanov.site ansible_host=${yandex_compute_instance.machine[6].network_interface.0.nat_ip_address} domain=timerkhanov.site
   
    DOC

  filename = "../ansible/inventory.yml"

  depends_on = [
    yandex_compute_instance.machine[0],
    yandex_compute_instance.machine[1],
    yandex_compute_instance.machine[2],
    yandex_compute_instance.machine[3],
    yandex_compute_instance.machine[4],
    yandex_compute_instance.machine[5],
    yandex_compute_instance.machine[6],
  ]
}
