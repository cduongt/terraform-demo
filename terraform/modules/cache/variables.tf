variable "subnet_ids" {
  description = "List of subnet IDs for the Redis cluster"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs for the Redis cluster"
  type        = list(string)
}
