terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        configuration_aliases = [aws.prod]
        }
    }
}
resource "aws_security_group" "dev" {
    name = "dev-security-group"
    description = "Security group for development environment"
  
}
resource "aws_security_group" "prod" {
    name = "prod-security-group"
    description = "Security group for production environment"
    provider = aws.prod
    
}