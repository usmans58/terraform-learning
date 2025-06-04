resource "aws_instance" "app_server" {
   ami = var.ami
   instance_type = "t2.micro"
   tags = {
       Name = "AppServer"
   }
   depends_on = [ aws_dynamodb_table.payroll_db, aws_s3_bucket.payroll_data ]
}