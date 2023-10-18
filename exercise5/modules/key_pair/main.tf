resource "aws_key_pair" "dove-key" {
  key_name   = var.key-name
  public_key = file("modules/key_pair/dove-key.pub")
}

output "key_name" {
  value = aws_key_pair.dove-key.key_name
}