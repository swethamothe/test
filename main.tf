terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 1.0"
    }
  }
}

provider "aws" {
	region  = var.region
}
    
resource "aws_instance" "main" {
	ami           = var.ami
	instance_type = var.instance_type
}



