# variable "ZONE1" {
#   default = "us-east-2a"
# }

# variable "ZONE2" {
#   default = "us-east-2b"
# }

# variable "ZONE3" {
#   default = "us-east-2c"
# }

variable "ZONE" {
  type = string
}

variable "vpc-id" {
  type = string
}

variable "cidr-block" {
  type = string
}

variable "tag" {
  type = map(any)
}