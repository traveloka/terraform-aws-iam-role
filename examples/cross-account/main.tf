provider "aws" {
  region = "ap-southeast-1"
}

module "this" {
  # In actual use case, you have to replace the following line (line 8) with:
  # source = "github.com/traveloka/terraform-aws-iam-role.git//modules/user?ref=v0.3.0"
  source = "../../modules/crossaccount"

  role_name                  = "SqsSendMessageToNvmawsmService"
  role_path                  = "something/"
  role_description           = "Role for sending message to nvm-you-are-awesome SQS"
  role_force_detach_policies = "true"
  role_max_session_duration  = "3600"

  trusted_role_arns = [
    # In actual use case, you have to replace this line(s) below with correct ARN.
    "arn:aws:iam::123456789012:role/instance-role/InstanceRole_tsttest-app-a5a88dc27381fa3a",
  ]

  product_domain = "nvm"
  service_name   = "nvmawsm"
  environment    = "production"
}

# You can output the IAM role name/arn and use it on SQS resource policy.
# See outputs.tf 

