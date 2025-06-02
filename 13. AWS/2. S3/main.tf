resource "aws_s3_bucket" "example" {
  bucket = "example-bucket-usman1234"
 
}
resource "aws_s3_bucket_object" "example_doc" {
  bucket = aws_s3_bucket.example.id
  key    = "example.doc"
  source = "example.doc"
}

data "aws_iam_group" "example-group-data" {
  group_name = "example-group"
}
resource "aws_s3_bucket_policy" "example" {
  bucket = aws_s3_bucket.example.id
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
        "Principal": {
            "AWS": "${data.aws_iam_group.example-group-data.arn}"
        },
      "Action": "*",
      "Resource": "${aws_s3_bucket.example.id}/*"
    }
  ]
}
EOF
}