module "realthered_gha_cicd_role" {
  source    = "terraform-aws-modules/iam/aws//modules/iam-role"

  providers = {
    aws = aws.us-east-1
  }

  name = "realthered-gha-cicd-role"
  enable_github_oidc = true

  oidc_wildcard_subjects = [
    "realthered/shared-infra:*",
    "realthered/portfolio:*"
  ]

  policies = {
    "realthered_gha_cicd_policy" = aws_iam_policy.realthered_gha_cicd_policy.arn
  }

  tags = local.tags
}
