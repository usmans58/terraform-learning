output "ami" {
  value = data.aws_ami.latest.image_id
  
}