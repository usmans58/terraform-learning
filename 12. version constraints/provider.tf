terraform {
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version ="5.98.0"
    }
    local = {
        source = "hashicorp/local"
        version = "~>2.0.0"
    }
    random = {
        source = "hashicorp/random"
        version = ">3.0.0"
    }
    null = {
        source = "hashicorp/null"
        version = "<3.0.0"
    }
    time = {
        source = "hashicorp/time"
        version = ">0.9.0,<0.10.0,!=0.10.0"
    }
  }
}