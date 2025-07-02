terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
required_version = ">= 1.12"
}

provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "git" {
  ami           = "ami-0f918f7e67a3323f0"  # Amazon Linux 2
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2git"
  }
}
