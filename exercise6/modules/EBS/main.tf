resource "aws_ebs_volume" "vol_d_dove" {
  availability_zone = var.ZONE
  size              = 3

  tags = {
    Name = "extra-vol-4-dove"
  }
}

resource "aws_volume_attachment" "atch_vol_dove" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.vol_d_dove.id
  instance_id = var.instance-id
}

output "volume_id" {
  value = aws_ebs_volume.vol_d_dove.id
}
