terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.3.0"
    }
  }
  
  cloud {
    organization = "swethamothe"

    workspaces {
      name = "basicenvsetup"
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



