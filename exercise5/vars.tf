variable "subnet" {
  type = map(any)
  default = {
    subnet1 = {
      tags = {
        Name = "dove-pub-1"
      },
      zone       = "us-east-2a",
      cidr_block = "10.0.1.0/24"
    },
    subnet2 = {
      tags = {
        Name = "dove-pub-2"
      },
      zone       = "us-east-2b",
      cidr_block = "10.0.2.0/24"
    },
    subnet3 = {
      tags = {
        Name = "dove-pub-3"
      },
      zone       = "us-east-2c",
      cidr_block = "10.0.3.0/24"
    },
    subnet4 = {
      tags = {
        Name = "dove-pri-1"
      },
      zone       = "us-east-2a",
      cidr_block = "10.0.4.0/24"
    },
    subnet5 = {
      tags = {
        Name = "dove-pri-2"
      },
      zone       = "us-east-2b",
      cidr_block = "10.0.5.0/24"
    },
    subnet6 = {
      tags = {
        Name = "dove-pri-3"
      },
      zone       = "us-east-2c",
      cidr_block = "10.0.6.0/24"
    }
  }
}