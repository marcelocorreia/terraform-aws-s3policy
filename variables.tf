variable "bucket" {
  description = "Bucket to be created"
}

variable "read_users" {
  type        = "list"
  default     = []
  description = "List of Users ARN"
}

variable "write_users" {
  type        = "list"
  default     = []
  description = "List of Users ARN"
}
