# 🌿 AgriCloud – Terraform AWS Infrastructure

This project sets up the foundational **AWS infrastructure** for an agritech platform using **Terraform**. It aims to support an AI-powered system for monitoring soil, water, temperature, and plant health — starting with coffee farms.

---

## 🚀 Objective (Phase 1)

Provision the following infrastructure components with Terraform:

- ✅ Virtual Private Cloud (VPC)
- ✅ Public & Private Subnets
- ✅ Internet & NAT Gateways
- ✅ Route Tables & Associations
- ✅ Security Groups (SSH, HTTP)
- ✅ EC2 Instance (Docker-ready)
- ✅ S3 Bucket (for data storage/logs)
- ✅ IAM Role for EC2 access
- ✅ CloudWatch Agent (optional future step)

---

## 🧱 Tech Stack

| Tool      | Purpose                       |
| --------- | ----------------------------- |
| Terraform | Infrastructure as Code (IaC)  |
| AWS       | Cloud Provider                |
| EC2       | Compute (for AI/API services) |
| S3        | Object Storage                |
| IAM       | Access Control                |
| VPC       | Networking                    |

---

## 📁 Project Structure

````bash
terraform-agricloud/
├── main.tf              # Core infrastructure: VPC, EC2, S3, SGs
├── variables.tf         # All input variables with types/defaults
├── outputs.tf           # Outputs like EC2 IP, S3 bucket name
├── terraform.tfvars     # Environment-specific values (ignored by Git)
├── provider.tf          # AWS provider and region config
├── backend.tf           # (Optional) Remote state config (e.g., S3)
└── README.md            # Project overview and usage


##  📦 Usage

1. **Initialize Terraform:**
   ```bash
   terraform init

2. Plan the deployment:
terraform plan -var-file="terraform.tfvars"

3. Apply the configuration:
terraform apply -var-file="terraform.tfvars"


📌 Author
Juzantino Junadi
Cloud Engineer | Full Stack Developer | AI/IoT Enthusiast
````
