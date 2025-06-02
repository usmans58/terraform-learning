resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-usman1234"
 
}
resource "aws_s3_bucket_object" "example_doc" {
  bucket = aws_s3_bucket.example.id
  key    = "example.doc"
  source = "example.doc"
  
  
}