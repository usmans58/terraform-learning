provider "aws" {
  region = "us-west-2"
}
terraform {
    backend "s3" {
        bucket         = "terraform-state-usman1234"
        key            = "terraform.tfstate"
        region         = "us-west-2"
        dynamodb_table = "terraform_locks"
    }
}