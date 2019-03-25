resource "aws_s3_bucket_policy" "read_policy" {
  bucket = "${var.bucket}"
  policy = "${data.aws_iam_policy_document.read_policy_document.json}"
}

resource "aws_s3_bucket_policy" "write_policy" {
  bucket = "${var.bucket}"
  policy = "${data.aws_iam_policy_document.write_policy_document.json}"
}
