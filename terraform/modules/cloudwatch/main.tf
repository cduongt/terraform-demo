resource "aws_cloudwatch_metric_alarm" "cpu_high" {
  alarm_name          = "HighCPUUtilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/ECS"
  period              = 300
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "Alarm when CPU exceeds 80%"
  actions_enabled     = true

  dimensions = {
    ClusterName = var.ecs_cluster_name
  }

  tags = {
    Name = "cpu-high-alarm"
  }
}

resource "aws_cloudwatch_metric_alarm" "memory_high" {
  alarm_name          = "HighMemoryUtilization"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "MemoryUtilization"
  namespace           = "AWS/ECS"
  period              = 300
  statistic           = "Average"
  threshold           = 80
  alarm_description   = "Alarm when memory exceeds 80%"
  actions_enabled     = true

  dimensions = {
    ClusterName = var.ecs_cluster_name
  }

  tags = {
    Name = "memory-high-alarm"
  }
}

resource "aws_cloudwatch_log_group" "ecs_logs" {
  name              = "/aws/ecs/${var.ecs_cluster_name}"
  retention_in_days = 30

  tags = {
    Name = "ecs-log-group"
  }
}

resource "aws_cloudwatch_metric_alarm" "http_5xx_errors" {
  alarm_name          = "HTTP5xxErrors"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "HTTPCode_Target_5XX_Count"
  namespace           = "AWS/ECS"
  period              = 300
  statistic           = "Sum"
  threshold           = 5
  alarm_description   = "Alarm when HTTP 5xx errors exceed 5% in the last 5 minutes"
  actions_enabled     = true

  dimensions = {
    ClusterName = var.ecs_cluster_name
  }

  tags = {
    Name = "http-5xx-errors-alarm"
  }
}
