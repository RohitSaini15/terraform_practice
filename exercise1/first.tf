provider "aws" {
  region = "us-east-2"
  # access_key = ""
  # secret_key = ""
}

resource "aws_instance" "intro" {
  ami                    = "ami-024e6efaf93d85776"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-2a"
  key_name               = "first_terraform_kp"
  vpc_security_group_ids = ["sg-072185be192ddfb76"]
  tags = {
    Name = "First-Terraform"
  }
}