resource "aws_s3_bucket" "terraform_state" {
  bucket = "terraform-state-usman1234"
  
  
}
resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform_locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = "Terraform Locks"
  }
  

}

terraform {
  backend "s3" {
    bucket         = "your-tf-state-bucket"
    key            = "env/prod/terraform.tfstate"
    region         = "YOUR_REGION"
    encrypt        = true
  }
}