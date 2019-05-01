# Variables for accepting Access Key and Secret key for AWS
# Default region is set to us-east-1

variable "option_1_aws_access_key" {}

variable "option_2_aws_secret_key" {}

variable "region" {}

variable "images" {
  type = "map"

  default = {
    web  = "ami-0de53d8956e8dcf80"
    mgmt = "ami-0a313d6098716f372"
    dblb = "ami-0de53d8956e8dcf80"
    db   = "ami-0a313d6098716f372"
    app  = "ami-0de53d8956e8dcf80"
    api  = "ami-0a313d6098716f372"
  }
}

variable "option_3_aws_vpc_name" {}
variable "option_4_aws_vpc_cidr" {}
variable "option_5_aws_admin_ssh_key_name" {}
variable "option_6_aws_admin_public_ssh_key" {}

variable "option_7_aws_dev_ssh_key_name" {}
variable "option_8_aws_dev_public_ssh_key" {}

variable "option_9_use_rds_database" {}
variable "option_10_aws_rds_identifier" {}
variable "option_11_multi_az_rds" {}

variable "product" {}
variable "team" {}
variable "owner" {}
variable "environment" {}
variable "organization" {}
variable "costcenter" {}
