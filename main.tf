// this file will define your core cloud resources (VPC, EC2, SUBNET, etc)
/*
# VPC
resource "aws_vpc" "main" {
    cidr_block           = "10.0.0.0/16"
    enable_dns_support   = true
    enable_dns_hostnames = true

    tags = {
    Name        = "agricloud-vpc"
    Environment = "dev"
    Project     = var.project_name
    
    }

}

# Public SUBNET
resource "aws_subnet" "public" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = true
    availability_zone = "${var.aws_region}a"

    tags = {
        Name = "${var.project_name}-public-subnet"
    }
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
    vpc_id = aws_vpc.main.id

    tags = {
        Name = "${var.project_name}-igw"
    }
}   

# Route Table
resource "aws_route_table" "public" {
    vpc_id = aws_vpc.main.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.igw.id
    }

    tags = {
        Name = "${var.project_name}-route-table"
    }
}

# Route Table Association
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

# Security Group (Allow SSH)
resource "aws_security_group" "ssh" {
  name        = "${var.project_name}-sg"
  description = "Allow SSH access"
  vpc_id      = aws_vpc.main.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.project_name}-sg"
  }
}

# EC2 Instance
resource "aws_instance" "web" {
  ami                         = "ami-0fc5d935ebf8bc3bc" # Amazon Linux 2 in ap-southeast-1
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.ssh.id]
  associate_public_ip_address = true

  tags = {
    Name = "${var.project_name}-ec2"
  }
}

*/

# Simulation Resource
resource "null_resource" "fake_vpc" {
  triggers = {
    name        = "${var.project_name}-vpc"
    environment = var.environment
  }

  provisioner "local-exec" {
    command = "echo Simulating VPC creation for ${var.environment}"
  }
}

resource "null_resource" "fake_subnet" {
  triggers = {
    name = "${var.project_name}-subnet"
  }

  provisioner "local-exec" {
    command = "echo Simulating Subnet creation"
  }
}

resource "null_resource" "fake_igw" {
  triggers = {
    name = "${var.project_name}-igw"
  }

  provisioner "local-exec" {
    command = "echo Simulating Internet Gateway creation"
  }
}

resource "null_resource" "fake_route_table" {
  triggers = {
    name = "${var.project_name}-route-table"
  }

  provisioner "local-exec" {
    command = "echo Simulating Route Table setup"
  }
}

resource "null_resource" "fake_ec2" {
  triggers = {
    name        = "${var.project_name}-fake-ec2"
    environment = var.environment
  }

  provisioner "local-exec" {
    command = "echo Simulating EC2 deployment for ${var.environment} environment"
  }
}

resource "null_resource" "fake_s3" {
  triggers = {
    name = "${var.project_name}-s3"
  }

  provisioner "local-exec" {
    command = "echo Simulating S3 bucket setup"
  }
}
