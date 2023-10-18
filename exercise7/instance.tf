resource "aws_instance" "test-import" {
  ami = "ami-024e6efaf93d85776"
  instance_type = "t2.micro"
  key_name = "first_terraform_kp"
  vpc_security_group_ids = ["sg-072185be192ddfb76"]
  subnet_id = "subnet-03232cc150de06dba"
  tags = {
    Name = "test-import-again"
  }
}