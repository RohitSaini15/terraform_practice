resource "aws_subnet" "dove-pub-1" {
  vpc_id                  = var.vpc-id
  cidr_block              = var.cidr-block
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE

  tags = var.tag
}

output "subnet_id" {
  value = aws_subnet.dove-pub-1.id
}

# resource "aws_subnet" "dove-pub-2" {
#   vpc_id                  = var.vpc-id
#   cidr_block              = "10.0.2.0/24"
#   map_public_ip_on_launch = "true"
#   availability_zone       = var.ZONE2

#   tags = {
#     Name = "dove-pub-2"
#   }
# }

# resource "aws_subnet" "dove-pub-3" {
#   vpc_id                  = var.vpc-id
#   cidr_block              = "10.0.3.0/24"
#   map_public_ip_on_launch = "true"
#   availability_zone       = var.ZONE3

#   tags = {
#     Name = "dove-pub-3"
#   }
# }

# resource "aws_subnet" "dove-pri-1" {
#   vpc_id                  = var.vpc-id
#   cidr_block              = "10.0.4.0/24"
#   map_public_ip_on_launch = "true"
#   availability_zone       = var.ZONE1

#   tags = {
#     Name = "dove-pri-1"
#   }
# }

# resource "aws_subnet" "dove-pri-2" {
#   vpc_id                  = var.vpc-id
#   cidr_block              = "10.0.5.0/24"
#   map_public_ip_on_launch = "true"
#   availability_zone       = var.ZONE2

#   tags = {
#     Name = "dove-pri-2"
#   }
# }

# resource "aws_subnet" "dove-pri-3" {
#   vpc_id                  = var.vpc-id
#   cidr_block              = "10.0.6.0/24"
#   map_public_ip_on_launch = "true"
#   availability_zone       = var.ZONE3

#   tags = {
#     Name = "dove-pri-3"
#   }
# }

output "subnet-id-pub-1" {
  value = aws_subnet.dove-pub-1.id
}

# output "subnet-id-pub-2" {
#   value = aws_subnet.dove-pub-2.id
# }

# output "subnet-id-pub-3" {
#   value = aws_subnet.dove-pub-3.id
# }

# output "subnet-id-pri-1" {
#   value = aws_subnet.dove-pri-1.id
# }

# output "subnet-id-pri-2" {
#   value = aws_subnet.dove-pri-2.id
# }

# output "subnet-id-pri-3" {
#   value = aws_subnet.dove-pri-3.id
# }