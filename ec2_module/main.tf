resource "aws_instance" "Master_1" {
  key_name      = "January"
  for_each={
    jenkins="t3.small"
    sonarqube="t3.small"
  }
  instance_type = each.value
  ami           = "ami-048ab8ac7e8c6533d"
  root_block_device {
    volume_size           = 20
    volume_type           = "gp3"
    delete_on_termination = true
  }
  tags={
    Name=each.key
  }
}
