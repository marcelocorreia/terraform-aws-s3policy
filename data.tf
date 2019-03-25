data "aws_iam_policy_document" "write_policy_document" {
  statement {
    sid    = "write-policy"
    effect = "Allow"

    actions = [
      "s3:Get*",
      "s3:List*",
      "s3:Put*",
    ]

    principals {
      identifiers = "${var.write_users}"
      type        = "AWS"
    }
  }
}

data "aws_iam_policy_document" "read_policy_document" {
  statement {
    sid    = "read-policy"
    effect = "Allow"

    actions = [
      "s3:Get*",
      "s3:List*",
    ]

    principals {
      identifiers = "${var.read_users}"
      type        = "AWS"
    }
  }
}
