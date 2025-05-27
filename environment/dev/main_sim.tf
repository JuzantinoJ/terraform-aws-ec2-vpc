# Simulation Mode (DEV) — Uses null_resource for safe local testing

resource "null_resource" "fake_vpc" {
  triggers = {
    name        = "${var.project_name}-vpc"
    environment = var.environment
  }

  provisioner "local-exec" {
    command = "echo [SIM] Creating VPC in ${var.environment}"
  }
}

resource "null_resource" "fake_ec2" {
  triggers = {
    name        = "${var.project_name}-ec2"
    environment = var.environment
  }

  provisioner "local-exec" {
    command = "echo [SIM] Launching EC2 instance for ${var.project_name}"
  }
}

resource "null_resource" "fake_s3" {
  triggers = {
    name = "${var.project_name}-s3"
  }

  provisioner "local-exec" {
    command = "echo [SIM] Creating S3 bucket..."
  }
}
