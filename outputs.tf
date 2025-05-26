# --- LIVE OUTPUTS ---

output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.main.id
}

output "subnet_id" {
  description = "The ID of the public subnet"
  value       = aws_subnet.public.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.web.public_ip
}

output "security_group_id" {
  description = "ID of the EC2 Security Group"
  value       = aws_security_group.ssh.id
}


# --- SIMULATED OUTPUTS (null_resource) ---

output "simulated_ec2_name" {
  description = "Simulated EC2 name"
  value       = null_resource.fake_ec2.triggers.name
}

output "simulated_vpc" {
  description = "Simulated VPC name"
  value       = null_resource.fake_vpc.triggers.name
}

output "simulated_s3" {
  description = "Simulated S3 bucket"
  value       = null_resource.fake_s3.triggers.name
}