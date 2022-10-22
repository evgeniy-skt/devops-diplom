resource "yandex_vpc_network" "default" {
  name = "net"
}

resource "yandex_vpc_subnet" "default" {
  name           = "subnet"
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.default.id}"
  v4_cidr_blocks = ["192.168.10.0/24"]
}

resource "yandex_dns_zone" "zone1" {
  name        = "my-private-zone"
  description = "privat zone for diplom"

  labels = {
    label1 = "label-1-value"
  }

  zone             = "ev-gen.info."
  public           = true
}

resource "yandex_dns_recordset" "rev-proxy-rs" {
  zone_id = yandex_dns_zone.zone1.id
  name    = "ev-gen.info."
  type    = "A"
  ttl     = 200
  data    = [yandex_compute_instance.revproxy.network_interface.0.nat_ip_address]
}

resource "yandex_dns_recordset" "gitlab-rs" {
  zone_id = yandex_dns_zone.zone1.id
  name    = "gitlab.ev-gen.info."
  type    = "A"
  ttl     = 200
  data    = [yandex_compute_instance.revproxy.network_interface.0.nat_ip_address]
}

resource "yandex_dns_recordset" "app-rs" {
  zone_id = yandex_dns_zone.zone1.id
  name    = "app.ev-gen.info."
  type    = "A"
  ttl     = 200
  data    = [yandex_compute_instance.revproxy.network_interface.0.nat_ip_address]
}

resource "yandex_dns_recordset" "grafana-rs" {
  zone_id = yandex_dns_zone.zone1.id
  name    = "grafana.ev-gen.info."
  type    = "A"
  ttl     = 200
  data    = [yandex_compute_instance.revproxy.network_interface.0.nat_ip_address]
}

resource "yandex_dns_recordset" "prometheus-rs" {
  zone_id = yandex_dns_zone.zone1.id
  name    = "prometheus.ev-gen.info."
  type    = "A"
  ttl     = 200
  data    = [yandex_compute_instance.revproxy.network_interface.0.nat_ip_address]
}

resource "yandex_dns_recordset" "alertmanager-rs" {
  zone_id = yandex_dns_zone.zone1.id
  name    = "alertmanager.ev-gen.info."
  type    = "A"
  ttl     = 200
  data    = [yandex_compute_instance.revproxy.network_interface.0.nat_ip_address]
}

resource "yandex_compute_instance" "revproxy" {
  name     = "proxy"
  hostname = "ev-gen.info"
  zone     = "ru-central1-a"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {
    initialize_params {
      image_id = "fd84mnpg35f7s7b0f5lg" // nat-instance-ubuntu-1804-lts
      type     = "network-hdd"
      size     = "10"
    }
  }

  network_interface {
    subnet_id   = "${yandex_vpc_subnet.default.id}"
    ip_address  = var.revproxy_ip
    nat         = true
    ipv6        = false
  }

  metadata = {
    user-data = file("${path.module}/cloud_config.yaml")
  }
}

resource "yandex_compute_instance" "db01" {
  name     = "db01"
  hostname = "db01.ev-gen.info"
  zone     = "ru-central1-a"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8h34rub6pjpg4qgi8j" // ubuntu-1804-lts
      type     = "network-hdd"
      size     = "10"
    }
  }

  network_interface {
    subnet_id   = "${yandex_vpc_subnet.default.id}"
    nat         = true
    ipv6        = false
  }

  metadata = {
    user-data = file("${path.module}/cloud_config.yaml")
  }
}

resource "yandex_compute_instance" "db02" {
  name     = "db02"
  hostname = "db02.ev-gen.info"
  zone     = "ru-central1-a"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8h34rub6pjpg4qgi8j" // ubuntu-1804-lts
      type     = "network-hdd"
      size     = "10"
    }
  }

  network_interface {
    subnet_id   = "${yandex_vpc_subnet.default.id}"
    nat         = true
    ipv6        = false
  }

  metadata = {
    user-data = file("${path.module}/cloud_config.yaml")
  }
}

resource "yandex_compute_instance" "app" {
  name     = "app"
  hostname = "app.ev-gen.info"
  zone     = "ru-central1-a"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8h34rub6pjpg4qgi8j" // ubuntu-1804-lts
      type     = "network-hdd"
      size     = "10"
    }
  }

  network_interface {
    subnet_id   = "${yandex_vpc_subnet.default.id}"
    nat         = true
    ipv6        = false
  }

  metadata = {
    user-data = file("${path.module}/cloud_config.yaml")
  }
}

resource "yandex_compute_instance" "gitlab" {
  name     = "gitlab"
  hostname = "gitlab.ev-gen.info"
  zone     = "ru-central1-a"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8h34rub6pjpg4qgi8j" // ubuntu-1804-lts
      type     = "network-hdd"
      size     = "10"
    }
  }

  network_interface {
    subnet_id   = "${yandex_vpc_subnet.default.id}"
    nat         = true
    ipv6        = false
  }

  metadata = {
    user-data = file("${path.module}/cloud_config.yaml")
  }
}

resource "yandex_compute_instance" "monitoring" {
  name     = "monitoring"
  hostname = "monitoring.ev-gen.info"
  zone     = "ru-central1-a"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8h34rub6pjpg4qgi8j" // ubuntu-1804-lts
      type     = "network-hdd"
      size     = "10"
    }
  }

  network_interface {
    subnet_id   = "${yandex_vpc_subnet.default.id}"
    nat         = true
    ipv6        = false
  }

  metadata = {
    user-data = file("${path.module}/cloud_config.yaml")
  }
}

resource "yandex_compute_instance" "runner" {
  name     = "runner"
  hostname = "runner.ev-gen.info"
  zone     = "ru-central1-a"

  resources {
    cores  = 4
    memory = 4
  }

  boot_disk {
    initialize_params {
      image_id = "fd8h34rub6pjpg4qgi8j" // ubuntu-1804-lts
      type     = "network-hdd"
      size     = "10"
    }
  }

  network_interface {
    subnet_id   = "${yandex_vpc_subnet.default.id}"
    nat         = true
    ipv6        = false
  }

  metadata = {
    user-data = file("${path.module}/cloud_config.yaml")
  }
}
