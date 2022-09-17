#https://registry.terraform.io/providers/hashicorp/aws/latest/docs#argument-reference
provider "aws" {
  region = "us-east-2"
}

resource "aws_instance" "myvm1" {
  ami = "ami-0568773882d492fc8"
  instance_type = "t2.micro"

  tags = {
    Name = "Test vm"
    Application = "CRM"
  }
}

