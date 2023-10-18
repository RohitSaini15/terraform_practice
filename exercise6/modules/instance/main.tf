resource "aws_instance" "dove-web" {
  ami                    = var.AMI
  instance_type          = "t2.micro"
  key_name               = var.key-name
  vpc_security_group_ids = [var.sg-id]
  subnet_id              = var.subnet-id
  tags = {
    Name = "my-dove"
  }
}

output "instance_id" {
  value = aws_instance.dove-web.id
}