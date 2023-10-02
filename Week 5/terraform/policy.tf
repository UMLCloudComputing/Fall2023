resource "aws_iam_policy" "s3_access_policy" {
  name        = "s3_access_policy"
  path        = "/"
  description = "Allow users to upload and mess with the S3 bucket ${aws_s3_bucket.c3_s3_demo.id}"

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:List*",
          "s3:Get*",
          "s3:Describe*",
          "s3:DeleteObjectTagging",
          "s3:DeleteObjectVersion",
          "s3:RestoreObject",
          "s3:PutObjectVersionTagging",
          "s3:DeleteObjectVersionTagging",
          "s3:PutObject",
          "s3:PutBucketTagging",
          "s3:PutObjectVersionAcl",
          "s3:PutObjectTagging",
          "s3:DeleteObject",
          "s3:PutObjectAcl"
        ]
        Effect = "Allow"
        Resource = [
          aws_s3_bucket.c3_s3_demo.arn,
          "${aws_s3_bucket.c3_s3_demo.arn}/*"
        ]
      },

      {
        Effect = "Allow",
        Action = "ssm:StartSession"
        Resource = [
          "arn:aws:ec2:*:${data.aws_caller_identity.current.account_id}:instance/${split("/", aws_instance.ec2.arn)[1]}",
          "arn:aws:ssm:*:${data.aws_caller_identity.current.account_id}:document/SSM-SessionManagerRunShell"
        ]
        Condition = {
          BoolIfExists = {
            "ssm:SessionDocumentAccessCheck" = "true"
          }
        }
      },
      {
        Effect = "Allow"
        Action = [
          "ssm:DescribeSessions",
          "ssm:GetConnectionStatus",
          "ssm:DescribeInstanceProperties",
          "ec2:DescribeInstances"
        ]
        Resource = "*"
      },
      {
        Effect = "Allow"
        Action = [
          "ssm:TerminateSession",
          "ssm:ResumeSession"
        ]
        Resource = [
          "arn:aws:ssm:*:${data.aws_caller_identity.current.account_id}:session/$${aws:userid}-*"
        ]
      }
    ]
  })
}

resource "aws_iam_group_policy_attachment" "attach_s3_access" {
  group      = "UML_Students"
  policy_arn = aws_iam_policy.s3_access_policy.arn
}
