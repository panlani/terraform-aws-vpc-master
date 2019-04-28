provider "aws" {
  region = "us-west-2"
}

data "aws_security_group" "default" {
  name   = "default"
  vpc_id = "${module.vpc.vpc_id}"
}

module "vpc" {
  source = "../../"

  name = "complete-example"

  cidr = "10.15.0.0/16"


  #azs             = ["us-west-2a"]
  azs             = ["us-west-2a", "us-west-2b", "us-west-2c"]
  private_subnets = ["10.15.1.0/24"]

  # VPC endpoint for API gateway
  enable_apigw_endpoint              = true
  apigw_endpoint_security_group_ids  = ["${data.aws_security_group.default.id}"]
  apigw_endpoint_private_dns_enabled = true

  tags = {
    Owner       = "user"
    Environment = "test"
    Name        = "test-224"
  }
}
