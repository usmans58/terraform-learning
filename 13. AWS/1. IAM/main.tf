resource "aws_iam_user" "name" {
    name = "example_user"
    tags = {
      Description = "This is an example IAM user"
    }
}