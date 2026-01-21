resource "aws_iam_openid_connect_provider" "github_oidc" {
  provider = aws.us-east-1

  url            = "https://token.actions.githubusercontent.com"
  client_id_list = [
    "sts.amazonaws.com",
  ]

  tags = merge(local.tags,
    {
      Name = "GitHub OIDC Provider"
      Type = "OIDC Provider"
    }
  )
}
