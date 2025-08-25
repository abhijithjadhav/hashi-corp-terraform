provider "aws" {
  region     = "ap-south-1"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0861f4e788f5069dd"
  instance_type = "t3.micro"
}


