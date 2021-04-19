provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAVUPAO7QPWGSDECHB"
  secret_key = "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"
}

resource "aws_instance" "myec2" {
  ami           = "ami-0083662ba17882949"
  instance_type = "t2.micro"
  key_name      = "devops-john"
  tags = {
    Name = "ec2-john"
  }
  ebs_block_device {
    device_name           = "/dev/sda1"
    delete_on_termination = true
  }
}
