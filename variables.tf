variable "region" {
  default = "us-east-1"
}
variable "vpc_dev_cidr" {
  default = "172.17.0.0/16"
}
variable "vpc_prod_cidr" {
  default = "172.16.0.0/16"
}
variable "tenancy" {
  default = "default"
}
