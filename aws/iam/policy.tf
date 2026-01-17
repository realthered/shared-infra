# Portfolio

resource "aws_iam_policy" "portfolio_policy" {
  name        = "portfolio-policy"
  description = "IAM policy for portfolio user"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:*",
          "ec2:*",
          "ce:*"
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_user_policy_attachment" "portfolio_policy_attachment" {
  user       = aws_iam_user.portfolio.name
  policy_arn = aws_iam_policy.portfolio_policy.arn
}
