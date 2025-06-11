variable "environment"{
    default = "dev"
}

resource "aws_instance" "my_ec2_instance" {
   ami = "ami-0418306302097dbff"
   instance_type = var.environment == "dev" ? "t2.micro" : "t2.large"
}