resource "aws_iam_user" "name" {
    name = "example_user"
    tags = {
      Description = "This is an example IAM user"
    }
}
resource "aws_iam_policy" "user_policy" {
    name        = "adminUser"
    description = "This policy grants permissions to the example user"
    policy = <<EOF
    {
      "Version": "2012-10-17",
      "Statement": [
        {
          "Effect": "Allow",
          "Action": "*",
          "Resource": "*"
        }
      ]
    }
    EOF
}

resource "aws_iam_user_policy_attachment" "user_policy_attachment" {
    user       = aws_iam_user.name.name
    policy_arn = aws_iam_policy.user_policy.arn
}