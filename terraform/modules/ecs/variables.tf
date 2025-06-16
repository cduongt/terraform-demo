variable "cluster_name" {
  description = "Name of the ECS cluster"
  type        = string
  default     = "flask-app-cluster"
}

variable "service_name" {
  description = "Name of the ECS service"
  type        = string
  default     = "flask-app-service"
}

variable "ecr_repository_url" {
  description = "URL of the ECR repository"
  type        = string
}

variable "task_cpu" {
  description = "CPU units for the task"
  type        = number
  default     = 256
}

variable "task_memory" {
  description = "Memory for the task in MB"
  type        = number
  default     = 512
}

variable "desired_count" {
  description = "Desired number of tasks"
  type        = number
  default     = 1
}

variable "subnet_id" {
  description = "Subnet ID for the ECS service"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID for the ECS service"
  type        = string
}

variable "public_subnet_id" {
  description = "Public subnet ID for the ECS service"
  type        = string
}
