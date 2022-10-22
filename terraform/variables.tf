# variable "zones" {
#   type    = list(string)
#   description = "List Yandex Cloud zones"
# }
#
# variable "cidr" {
#   type    = list(string)
#   description = "List supernetting"
# }
#
# variable "name" {
#   type = list(string)
#   description = "List domains"
# }
#
# variable "hostname" {
#   type = list(string)
#   description = "List hostnames"
# }
#
# variable "sub_domain" {
#   type    = list(string)
#   description = "List subdomains"
# }
#
variable "revproxy_ip" {
  description = "Reversy Proxy internal IP"
}

variable "yandex_cloud_id" {
  default = "b1g6lo2rc5adodj725ug"
}

variable "yandex_folder_id" {
  default = "b1g4m1l6jnuj36tuuih8"
}

variable "centos-7-base" {
  default = "fd8g91gj0v8gk43pi0jm"
}
