variable aws_region {
  type    = "string"
  default = "ap-southeast-2"
}

provider "aws" {
  region = "${var.aws_region}"
}

module "s3_policy" {
  source = "../"
  bucket = "hey"
}

data "aws_caller_identity" "me" {}
