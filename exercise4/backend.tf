terraform {
  backend "s3" {
    bucket = "terraform-dove"
    key    = "terraform/exercise4"
    region = "us-east-2"
  }
}