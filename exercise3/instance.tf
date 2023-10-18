resource "aws_key_pair" "dove-key" {
  key_name   = "dovekey"
  public_key = file("dove-key.pub")
}

resource "aws_instance" "dove-east" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = aws_key_pair.dove-key.key_name
  vpc_security_group_ids = ["sg-072185be192ddfb76"]
  tags = {
    Name = "Third-Terraform"
  }

  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }

  connection {
    user        = var.USER
    private_key = file("dove-key")
    host        = self.public_ip
  }
}

output "PublicIP" {
  value = aws_instance.dove-east.public_ip
}

output "PrivateIP" {
  value = aws_instance.dove-east.private_ip
}