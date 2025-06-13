data "aws_ami" "latest" {
  most_recent = true

  owners = ["amazon"]
  filter {
    name = "name"
    values = ["al2023-ami-2023.7*"]
  }
  filter {
    name = "virtualization-type"
    values = ["hvm"]
  }
}

resource "aws_instance" "latest_os_instance" {
  ami           = data.aws_ami.latest.image_id
  instance_type = "t2.micro"
  tags = {
    Name        = "Latest-OS-Instance"
    Description = "This instance uses the latest Amazon Linux OS"
  }
}
