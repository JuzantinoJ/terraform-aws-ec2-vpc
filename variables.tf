// This file will define all the variables we will be using.
# region, instance type, project name, etc

variable "aws_region" {
    description = "The AWS region to deploy resources in"
    default = "ap_southeast-1"
}

variable "project_name" {
    description = "Prefix used for tagging and naming resources"
    default = "agricloud"
}

variable "instance_type" {
    description = "EC2 instance type"
    default = "t2.micro"
}

variable "key_name" {
    description = "EC2 key pair name (must exist in your AWS account)"
    type = string
}

variable "environment" {
    description = "Environment"
    type = string
}