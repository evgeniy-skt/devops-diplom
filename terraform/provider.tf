terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.80.0"
    }
  }
}

provider "yandex" {
  service_account_key_file = "key.json"
  cloud_id  = "b1g6lo2rc5adodj725ug"
  folder_id = "b1g4m1l6jnuj36tuuih8"
}
