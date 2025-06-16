resource "aws_s3_bucket" "flask_bucket" {
  bucket = var.bucket_name
  acl    = "private"

  tags = {
    Environment = var.environment
  }
}

resource "aws_s3_bucket_policy" "cloudwatch_policy" {
  bucket = aws_s3_bucket.flask_bucket.id

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "cloudwatch.amazonaws.com"
      },
      "Action": "s3:PutObject",
      "Resource": "arn:aws:s3:::${aws_s3_bucket.flask_bucket.bucket}/*"
    }
  ]
}
POLICY
}
