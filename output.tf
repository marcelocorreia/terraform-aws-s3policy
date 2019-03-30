output "read_policy_id" {
  value = "${aws_s3_bucket_policy.read_policy.id}"
  description = "Policy ID"
}
output "write_policy_id" {
  value = "${aws_s3_bucket_policy.write_policy.id}"
  description = "Policy ID"
}
