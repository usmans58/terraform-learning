variable "ports-ingress" {
  type = list(number)
  default = [80, 22, 443, 8080]
}
resource "aws_security_group" "name" {
  name        = "example-sg"
  description = "Example security group"

  dynamic "ingress" {
    for_each = var.ports-ingress
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}