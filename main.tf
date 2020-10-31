provider "aws" {
  profile = var.profile
  region  = "ap-southeast-1"
}

data "aws_subnet" "selected" {
  filter {
    name   = "tag:Name"
    values = ["premier-research-ap-southeast-1b"]
  }
}

resource "aws_instance" "my_ec2" {
  count         = 1
  ami           = "ami-093da183b859d5a4b"
  # subnet_id     = data.aws_subnet.selected.id
  subnet_id     = "subnet-4182a637"
  key_name      = "bas-tf-workshop"
  instance_type = var.instance_type
  user_data     = file("bootstrap.sh")
  tags          = {
    Name  = "bas-tf"
  }
}

output "instance_ips" {
  value = [aws_instance.my_ec2.*.public_ip]
}
