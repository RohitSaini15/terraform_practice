resource "aws_route_table" "dove-pub-RT" {
  vpc_id = var.vpc-id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.gw-id
    transit_gateway_id = null
  }

  tags = {
    Name = "dove-pub-RT"
  }
}

# resource "aws_route_table_association" "dove-pub-2-a" {
#   subnet_id      = var.subnet-id-2
#   route_table_id = aws_route_table.dove-pub-RT.id
# }

# resource "aws_route_table_association" "dove-pub-3-a" {
#   subnet_id      = var.subnet-id-3
#   route_table_id = aws_route_table.dove-pub-RT.id
# }

output "route_table_id" {
  value = aws_route_table.dove-pub-RT.id
}