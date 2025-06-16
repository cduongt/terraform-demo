output "redis_endpoint" {
  value = aws_elasticache_cluster.redis.configuration_endpoint
}

output "redis_cluster_id" {
  value = aws_elasticache_cluster.redis.cluster_id
}
