provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    bucket = "jenkins-ansible-terraform-git-integration-27"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
