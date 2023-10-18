resource "aws_internet_gateway" "dove-IGW" {
  vpc_id = var.vpc_id

  tags = {
    Name = "dove-IGW"
  }
}

output "gateway_id" {
  value = aws_internet_gateway.dove-IGW.id
}