resource "aws_instance" "example-instance" {
  ami = "ami-0418306302097dbff"
  instance_type = "t2.micro"
  tags = {
    Name = "example-instance"
    Description = "This is an example EC2 instance"
  }
  key_name = aws_key_pair.example-key.id
  vpc_security_group_ids = [aws_security_group.ssh-access.id]
  provisioner "local-exec" {
    command = "echo ${aws_instance.example-instance.public_ip} > ~/public_ip.txt"

  }
 
}

resource "aws_key_pair" "example-key" {
  public_key = file("~/Downloads/test.pub")
  
}
resource "aws_security_group" "ssh-access" {
  name        = "ssh-access-1"
  description = "Allow SSH access"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
output "name" {
  value = aws_instance.example-instance.public_ip
  
}