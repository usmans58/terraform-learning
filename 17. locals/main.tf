
locals {
  default={
    Team = "DevOps",
  }
}

resource "aws_instance" "first_ec2" {
  ami           = "ami-08a0d1e16fc3f61ea"
  instance_type = "t2.micro"
  tags = local.default
  
}

resource "aws_instance" "second_ec2" {
  ami           = "ami-08a0d1e16fc3f61ea"
  instance_type = "t2.micro"
  tags = local.default

}



locals {
  tags = {
    Owner     = "DevOps Team"
    ManagedBy = "Terraform"
  }

  bucket_name = lower("MyProject-${random_id.bucket_suffix.hex}")
}