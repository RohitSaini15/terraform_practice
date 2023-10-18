resource "aws_instance" "dove-east" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "first_terraform_kp"
  vpc_security_group_ids = ["sg-072185be192ddfb76"]
  tags = {
    Name = "Second-Terraform"
  }
}