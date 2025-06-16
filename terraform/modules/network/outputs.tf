output "vpc_id" {
  value = aws_vpc.main.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "private_subnet_id" {
  value = aws_subnet.private.id
}

output "security_group_id" {
  value = aws_security_group.fargate_sg.id
}

output "nat_gateway_id" {
  value = aws_nat_gateway.main.id
}

output "ecr_dkr_endpoint_id" {
  value = aws_vpc_endpoint.ecr_dkr.id
}

output "ecr_api_endpoint_id" {
  value = aws_vpc_endpoint.ecr_api.id
}
