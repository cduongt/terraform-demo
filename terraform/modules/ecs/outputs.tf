output "cluster_id" {
  value = aws_ecs_cluster.fargate_cluster.id
}

output "service_name" {
  value = aws_ecs_service.flask_service.name
}

output "task_definition_arn" {
  value = aws_ecs_task_definition.flask_app.arn
}
