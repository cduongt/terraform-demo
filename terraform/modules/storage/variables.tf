variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "example-bucket-terraform-demo"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}
