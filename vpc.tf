resource "aws_vpc" "dev_demo_vpc" {
  cidr_block       = "${var.vpc_dev_cidr}"
  instance_tenancy = "${var.tenancy}"
  tags = {
    Name = "dev-demo-vpc"
  }
}

resource "aws_vpc" "prod_demo_vpc" {
  cidr_block       = "${var.vpc_prod_cidr}"
  instance_tenancy = "${var.tenancy}"
  tags = {
    Name = "prod-demo-vpc"
  }
}
