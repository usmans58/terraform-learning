resource "aws_instance" "web_server" {
  ami           = "ami-12345678"
  instance_type = "t2.micro"

  tags = {
    Name = "WebServer"
  }

  lifecycle {
    ignore_changes = [
      tags["Name"],
      instance_type,
    ]
  }
  
}