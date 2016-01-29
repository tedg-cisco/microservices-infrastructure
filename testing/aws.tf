variable "build_number" {}

provider "aws" {
  region = "eu-central-1"
}

module "aws-mantl-testing" {
  source = "./terraform/aws"
  availability_zone = "eu-central-1a"
  ssh_username = "centos"
  source_ami = "ami-e68f82fb"
  short_name = "mantl-ci-${var.build_number}"
  long_name = "ciscocloud-mantl-ci-${var.build_number}"

  control_count = 3
  worker_count = 3
  edge_count = 2
}
