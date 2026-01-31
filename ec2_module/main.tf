provider "aws" {
  region = "ap-southeast-2"
}
resource "aws_instance" "Master_1" {
  key_name      = "January"
  instance_type = "m7i-flex.large"
  ami           = "ami-048ab8ac7e8c6533d"
  root_block_device {
    volume_size           = 20
    volume_type           = "gp3"
    delete_on_termination = true
  }
}
