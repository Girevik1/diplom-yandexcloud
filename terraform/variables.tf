variable "yandex_cloud_id" {
  default = "b1ggql77dlrjvi1f6lan"
}

variable "yandex_folder_id" {
  default = "b1g7d73f7tht4jkdqtjh"
}

variable "cidrs" {
  type    = list(string)
  default = ["192.168.100.0/24", "192.168.101.0/24"]
}

variable "zones" {
  type    = list(string)
  default = ["ru-central1-a", "ru-central1-b"]
}

variable "ubu" {
  default = "fd87tirk5i8vitv9uuo1"
}

variable "vm" {
  type    = list(string)
  default = ["timerkhanov.site", "db01.timerkhanov.site", "db02.timerkhanov.site", "app.timerkhanov.site", "gitlab.timerkhanov.site", "runner.timerkhanov.site", "monitoring.timerkhanov.site"]
}
