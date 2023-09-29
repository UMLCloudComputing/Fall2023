data "aws_ami" "amazon_linux_2023" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}

resource "aws_instance" "ec2" {
  ami           = data.aws_ami.amazon_linux_2023.id
  instance_type = "t3.small"

  associate_public_ip_address = true

  subnet_id              = "subnet-0952416ab3ce6f326"
  vpc_security_group_ids = [aws_security_group.allow_egress.id]
  user_data              = "echo 'This is a secret'"

  iam_instance_profile = aws_iam_instance_profile.ec2_role_profile.id

  tags = {
    Name = "EBS_EC2"
  }
}

resource "aws_security_group" "allow_egress" {
  name        = "allow_ec2_egress"
  description = "Allow out bound traffic"
  vpc_id      = "vpc-097e0b8296cffa9ac"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ec2_egress"
  }
}