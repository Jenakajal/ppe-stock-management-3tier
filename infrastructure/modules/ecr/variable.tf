variable "project" {
  type = string
}

variable "services" {
  type    = list(string)
  default = ["dashboard", "view-stock", "logout"]
}

