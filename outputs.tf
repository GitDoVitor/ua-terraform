output "vpc_id" {
  value = aws_vpc.this.id
}

output "igw_id" {
  value = aws_internet_gateway.this.id
}

output "subnet_ids" {
  value = { for k, v in aws_subnet.this : v.tags.Name => v.id }
}

output "public_route_table_id" {
  value = aws_route_table.public.id
}

output "private_route_table_id" {
  value = aws_route_table.private.id
}

output "rds_url" {
  value = aws_db_instance.web.endpoint
}

output "rds_username" {
  value = aws_db_instance.web.username
}

output "rds_password" {
  value     = aws_db_instance.web.password
  sensitive = true
}
