
resource "aws_iam_policy" "realthered_gha_cicd_policy" {
  provider = aws.us-east-1

  name = "realthered-gha-cicd-policy-document"
  path = "/"
  description = "Policy document for GitHub Actions CI/CD role for realthered"

  policy = data.aws_iam_policy_document.realthered_gha_cicd_policy.json
}

data "aws_iam_policy_document" "realthered_gha_cicd_policy" {
  provider = aws.us-east-1

  statement {
    effect = "Allow"
    actions = [
      "iam:CreateUser",
      "iam:DeleteUser",
      "iam:CreateRole",
      "iam:DeleteRole",
      "iam:CreatePolicy",
      "iam:DeletePolicy",
      "iam:CreatePolicyVersion",
      "iam:DeletePolicyVersion",
      "iam:CreateInstanceProfile",
      "iam:DeleteInstanceProfile",
      "iam:AddRoleToInstanceProfile",
      "iam:RemoveRoleFromInstanceProfile",
      "iam:AttachUserPolicy",
      "iam:DetachUserPolicy",
      "iam:AttachRolePolicy",
      "iam:DetachRolePolicy",
      "iam:Get*",
      "iam:List*",
      "iam:Tag*",
      "iam:PassRole"
    ]
    resources = ["*"]
  }
  statement {
    effect = "Allow"
    actions = [
      "s3:*",
    ]
    resources = ["*"]
  }

  statement {
    effect = "Allow"
    actions = [
      "ec2:*",
      "autoscaling:*",
    ]
    resources = ["*"]
  }

  statement {
    effect = "Allow"
    actions = [
      "lambda:*",
    ]
    resources = ["*"]
  }

  statement {
    effect = "Allow"
    actions = [
      "route53:*",
      "route53domains:*",
    ]
    resources = ["*"]
  }
}