resource "aws_vpc" "dove" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  tags = {
    Name = "terraform-dove"
  }
}

output "vpc_id" {
  value = aws_vpc.dove.id
}