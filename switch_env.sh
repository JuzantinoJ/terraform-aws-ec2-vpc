#!/bin/bash

if [ "$1" == "dev" ]; then
  cp environment/dev/terraform.tfvars terraform.tfvars
  cp environment/dev/main_sim.tf main.tf
  echo "✅ Switched to DEV (Simulation Mode)"
  echo "📁 Please work in the DEV folder"
elif [ "$1" == "prod" ]; then
  cp environment/prod/terraform.tfvars terraform.tfvars
  cp environment/prod/main_prod.tf main.tf
  echo "✅ Switched to PROD (Live AWS Mode)"
  echo "📁 Please work in the PROD folder"
else
  echo "❌ Usage: ./switch_env.sh [dev|prod]"
  exit 1
fi