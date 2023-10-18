resource "aws_route_table_association" "dove-pub-1-a" {
  subnet_id      = var.subnet-id
  route_table_id = var.route-table-id
}