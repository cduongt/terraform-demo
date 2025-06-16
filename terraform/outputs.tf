output "bucket_name" {
  description = "Name of the created S3 bucket"
  value       = module.storage.bucket_name
}

output "ecs_cluster_id" {
  description = "ID of the ECS cluster"
  value       = module.ecs.cluster_id
}

output "ecs_service_name" {
  description = "Name of the ECS service"
  value       = module.ecs.service_name
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.network.vpc_id
}
