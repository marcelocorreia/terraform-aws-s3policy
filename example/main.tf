variable aws_region {
  type    = "string"
  default = "ap-southeast-2"
}

provider "aws" {
  region = "${var.aws_region}"
}

module "s3_policy" {
  source      = "../"
  bucket      = "hey"
  read_users  = ["arn:aws:iam::12345678901:user/dalek", "arn:aws:iam::12345678901:user/gepetto"]
  write_users = ["${data.aws_caller_identity.me.arn}"]
}

data "aws_caller_identity" "me" {}
