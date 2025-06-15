provider "aws" {
    region = "us-west-2"
}
provider "aws" {
    alias  = "newyork"
    region = "us-east-1"
}
module "prod_security_group" {
    source = "./modules/security-group"
    providers = {
        aws.prod = aws.newyork
    }
}