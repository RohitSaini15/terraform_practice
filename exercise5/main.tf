module "vpc" {
  source = "./modules/vpc"
}

module "subnet" {
  source = "./modules/subnet"
  vpc-id = module.vpc.vpc_id

  for_each = var.subnet

  cidr-block = each.value.cidr_block
  tag        = each.value.tags
  ZONE       = each.value.zone
}

module "security_group" {
  source = "./modules/security_group"
  vpc-id = module.vpc.vpc_id
}

module "key_pair" {
  source   = "./modules/key_pair"
  key-name = "dove-key"
}

module "internet_gateway" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
}

module "instance" {
  source    = "./modules/instance"
  key-name  = module.key_pair.key_name
  sg-id     = module.security_group.sg-id
  subnet-id = module.subnet["subnet1"].subnet_id
}

module "ebs" {
  source      = "./modules/EBS"
  instance-id = module.instance.instance_id
}

module "route_table" {
  source    = "./modules/route_table"
  gw-id     = module.internet_gateway.gateway_id
  for_each  = var.subnet
  subnet-id = module.subnet[each.key].subnet_id
  vpc-id    = module.vpc.vpc_id
}