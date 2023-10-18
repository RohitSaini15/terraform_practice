resource "aws_route_table" "rt" {
  vpc_id = var.vpc-id


  for_each = var.route_tables

  dynamic "route" {
    for_each = toset(each.value)
    content {
      cidr_block      = strcontains(route.value.destination, ":") ? null : route.value.destination
      ipv6_cidr_block = strcontains(route.value.destination, ":") ? route.value.destination : null
      gateway_id      = (route.value.type == "igw" ? route.value.target : null)
    }
  }

  tags = {
    Name = each.key
  }
}

resource "aws_subnet" "sb" {
  vpc_id            = var.vpc-id
  for_each          = var.public_subnet
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = {
    Name = each.key
  }
}

resource "aws_route_table_association" "rta" {
  for_each       = var.public_subnet
  subnet_id      = aws_subnet.sb[each.key].id
  route_table_id = aws_route_table.rt[each.value.route_table].id
}