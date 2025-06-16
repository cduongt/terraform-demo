variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
  default     = {}
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "eu-central-1"
}

variable "ecr_repository_url" {
  description = "URL of the ECR repository"
  type        = string
  default     = "177341748690.dkr.ecr.eu-central-1.amazonaws.com/flask-app"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "dev"
}
