// PROD

# VPC ID
output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.main.id
}

# Subnet ID
output "subnet_id" {
  description = "The ID of the created public subnet"
  value       = aws_subnet.public.id
}

# Internet Gateway ID
output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

# Route Table ID
output "route_table_id" {
  description = "The ID of the public route table"
  value       = aws_route_table.public.id
}

# Route Table Association ID
output "route_table_association_id" {
  description = "The ID of the subnet-to-route-table association"
  value       = aws_route_table_association.public.id
}

# Security Group ID
output "security_group_id" {
  description = "The ID of the security group"
  value       = aws_security_group.ssh.id
}

# EC2 Instance Public IP
output "ec2_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.web.public_ip
}

# EC2 Instance ID
output "ec2_instance_id" {
  description = "The instance ID of the EC2 server"
  value       = aws_instance.web.id
}


// dev

# VPC ID
output "vpc_id" {
  description = "The ID of the created VPC"
  value       = try(aws_vpc.main.id, null)
}

# Subnet ID
output "subnet_id" {
  description = "The ID of the created public subnet"
  value       = try(aws_subnet.public.id, null)
}

# Internet Gateway ID
output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = try(aws_internet_gateway.igw.id, null)
}

# Route Table ID
output "route_table_id" {
  description = "The ID of the public route table"
  value       = try(aws_route_table.public.id, null)
}

# Route Table Association ID
output "route_table_association_id" {
  description = "The ID of the subnet-to-route-table association"
  value       = try(aws_route_table_association.public.id, null)
}

# Security Group ID
output "security_group_id" {
  description = "The ID of the security group"
  value       = try(aws_security_group.ssh.id, null)
}

# EC2 Instance Public IP
output "ec2_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = try(aws_instance.web.public_ip, null)
}

# EC2 Instance ID
output "ec2_instance_id" {
  description = "The instance ID of the EC2 server"
  value       = try(aws_instance.web.id, null)
}
