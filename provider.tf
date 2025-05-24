// Tells Terraform which cloud provider we are using. 
# In this project we will be using AWS and which region we will be deploying in.

provider "aws" {
    region = var.aws_region
}
