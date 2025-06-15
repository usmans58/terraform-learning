variable "example_map" {
  type = map(string)
  default = {
    dev = "ami-12345678" 
    test = "ami-23456789"
    prod = "ami-34567890"
  }
}
resource "aws_instance" "name" {
    for_each = var.example_map
    ami = each.value
    instance_type = "t2.micro"

    tags ={
        Name        = "Instance-${each.key}"
       
    }
  
}