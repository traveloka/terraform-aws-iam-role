provider "aws" {
  region = "ap-southeast-1"
}

module "this" {
  # In actual use case, you have to replace the following line (line 8) with: 
  # source = "github.com/traveloka/terraform-aws-iam-role.git//modules/service?ref=v0.3.0"
  source = "../../modules/service"

  role_identifier            = "Default Config"
  role_description           = "Service Role for Default AWS Config"
  role_force_detach_policies = false
  role_max_session_duration  = 43200

  aws_service = "config.amazonaws.com"

  product_domain = "tst"
  environment    = "production"
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = module.this.role_name
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSConfigRole"
}

