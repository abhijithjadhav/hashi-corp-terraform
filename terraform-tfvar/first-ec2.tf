provider "aws" {
  region     = "ap-south-1"
}

resource "aws_instance" "myec2" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  count =3
  tags = {
    Name = "MyFirstEC2-${count.index}"
  }
}
variable "name"{
  type = list
  default = ["ec2-1","ec2-2","ec2-3"]
}
resource "aws_instance" "myec22" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  count =3
  tags = {
    Name = var.name[count.index]
  }
}



