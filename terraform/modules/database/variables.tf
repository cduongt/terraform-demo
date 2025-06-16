variable "subnet_ids" {
  description = "List of subnet IDs for the RDS database"
  type        = list(string)
}

variable "security_group_ids" {
  description = "List of security group IDs for the RDS database"
  type        = list(string)
}

variable "db_username" {
  description = "Username for the RDS PostgreSQL database"
  type        = string
}

variable "db_password" {
  description = "Password for the RDS PostgreSQL database"
  type        = string
}
