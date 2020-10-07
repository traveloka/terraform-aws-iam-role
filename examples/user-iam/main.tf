provider "aws" {
  region = "ap-southeast-1"
}

module "this" {
  # In actual use case, you have to replace the following line (line 8) with:
  # source = "github.com/traveloka/terraform-aws-iam-role.git//modules/user?ref=v0.3.0"
  source = "../../modules/user"

  role_name                  = "RandomAdmin"
  role_path                  = "/mgmt/" # mgmt stands for management. They have access to manage all resources within the account.
  role_description           = "Role for Users with Administrator Access"
  role_force_detach_policies = true
  role_max_session_duration  = 43200

  trusted_users = [
    "arn:aws:iam::715824975366:role/SuperAdmin", # In actual use case, you have to replace this line with correct IAM User ARN.
  ]

  mfa_required   = true # Set this value to false only when needed
  product_domain = "txt"
  environment    = "prodution"
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = module.this.role_name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

