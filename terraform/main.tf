terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  service_account_key_file = "../../secrets/key.json"
  cloud_id                 = var.yandex_cloud_id
  folder_id                = var.yandex_folder_id
  zone                     = "ru-central1-a"
}

resource "yandex_storage_bucket" "test" {
  bucket     = "netback"
  access_key = "YCAJECu1aqXr9mmz4MqQ3X2ZX"
  secret_key = "YCPs0nAFDwGRRX7RsPqtw8tbLSco1quLbR-6pB78"
}
