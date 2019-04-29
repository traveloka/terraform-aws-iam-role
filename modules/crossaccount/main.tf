# Trust relationship policy document for user that requires MFA to be enabled.
data "aws_iam_policy_document" "doc" {
  statement = {
    actions = ["sts:AssumeRole"]

    principals = {
      type        = "AWS"
      identifiers = "${var.trusted_accounts}"
    }
  }
}

provider "null" {
  version = "1.0.0"
}

# Work around to throws an exception. 
# It throws exception when the provided path does not begin and end with a forward slash.
resource "null_resource" "is_path_valid" {
  count                                        = "${substr(var.role_path, 0, 14) != "/crossaccount/" ? 1 : 0}"
  "Path names must begin with '/crossacount/'" = "true"
}

module "aws-resource-naming_iam_role" {
  source        = "git::https://github.com/traveloka/terraform-aws-resource-naming.git?ref=v0.13.0"
  name_prefix   = "${var.role_name}"
  resource_type = "iam_role"
}

# Module, the parent module.
module "this" {
  source = "../../"

  role_name        = "${module.aws-resource-naming_iam_role.name}"
  role_path        = "${var.role_path}"
  role_description = "${var.role_description}"

  role_tags = "${merge(map(
    "Service", "${var.service_name}"
    ),var.role_tags)}"

  role_assume_policy         = "${data.aws_iam_policy_document.doc.json}"
  role_force_detach_policies = "${var.role_force_detach_policies}"
  role_max_session_duration  = "${var.role_max_session_duration}"

  product_domain = "${var.product_domain}"
  environment    = "${var.environment}"
}
