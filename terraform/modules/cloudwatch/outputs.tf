output "cpu_high_alarm_name" {
  value = aws_cloudwatch_metric_alarm.cpu_high.alarm_name
}

output "memory_high_alarm_name" {
  value = aws_cloudwatch_metric_alarm.memory_high.alarm_name
}

output "log_group_name" {
  value = aws_cloudwatch_log_group.ecs_logs.name
}
