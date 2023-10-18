variable "vpc-id" {
  type    = string
  default = "vpc-0ca31513003fb84fc"
}

variable "route_tables" {
  type = map(list(object({
    destination = string
    target      = string
    type        = string
  })))

  default = {
    "kubernetes.hellocom.xyz" = [
      {
        destination = "::/0",
        target      = "igw-00a9567d4376f82eb",
        type        = "igw"
      },
    #   {
    #     destination = "2600:1f16:9d3:2000::/56",
    #     target      = "local",
    #     type        = "igw"
    #   },
      {
        destination = "0.0.0.0/0",
        target      = "igw-00a9567d4376f82eb",
        type        = "igw"
      },
    #   {
    #     destination = "172.20.0.0/16",
    #     target      = "local",
    #     type        = "igw"
    #   }
    ]
  }
}

variable "public_subnet" {
  type = map(object({
    cidr_block        = string,
    route_table       = string,
    availability_zone = string
  }))

  default = {
    "us-east-2b.kubernetes.hellocom.xyz" = {
      cidr_block        = "172.20.128.0/17"
      route_table       = "kubernetes.hellocom.xyz",
      availability_zone = "us-east-2b"
    }
    "us-east-2a.kubernetes.hellocom.xyz" = {
      cidr_block        = "172.20.0.0/17"
      route_table       = "kubernetes.hellocom.xyz",
      availability_zone = "us-east-2a"
    }
  }
}