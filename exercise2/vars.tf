variable "REGION" {
  default = "us-east-2"
}

variable "ZONE1" {
  default = "us-east-2a"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-1 = "ami-053b0d53c279acc90"
    us-east-2 = "ami-024e6efaf93d85776"
  }
}