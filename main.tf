provider "aws" {
  region  = "us-east-1"
}

module "app" {
  source         = "./modules/app_server"
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  instance_count = var.instance_count
  environment    = var.environment
}