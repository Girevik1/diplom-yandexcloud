terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "os-tfstate"
    region     = "ru-central1"
    key        = ".terraform/terraform.tfstate"
    access_key = "YCAJEvOTu5lRpPdxl9Rarvrpo"
    secret_key = "YCPx0luZspDEayxACag-U4jt1qZqObuapE_6k3vG"

    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  service_account_key_file = "../../secrets/key.json"
  cloud_id                 = var.yandex_cloud_id
  folder_id                = var.yandex_folder_id
}
