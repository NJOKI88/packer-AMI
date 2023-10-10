provider "aws" {
  region = "us-west-2"
}

variable "ami_id" {
  description = "The AMI ID for the EC2 instance"
}

variable "region" {
  description = "var.region"
}

resource "aws_instance" "bootcamp32" {
  ami           = var.ami_id
  instance_type = "t2.micro"

  tags = {
    Name = "bootcamp32-instance"
  }
}