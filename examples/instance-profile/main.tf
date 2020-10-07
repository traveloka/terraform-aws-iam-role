provider "aws" {
  region = "ap-southeast-1"
}

module "this" {
  # In actual use case, you have to replace the following line (line 8) with:
  # source = "github.com/traveloka/terraform-aws-iam-role.git//modules/instance?ref=v0.3.0"
  source = "../../modules/instance"

  service_name   = "txtdata"
  cluster_role   = "app"
  product_domain = "txt"
  environment    = "production"
}

resource "aws_iam_role_policy_attachment" "this" {
  role       = module.this.role_name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}

