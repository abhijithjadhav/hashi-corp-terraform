provider "aws" {
  region     = "ap-south-1"
}

resource "aws_instance" "myec2" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
}


