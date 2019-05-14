provider "random" {
  version = "1.2.0"
}

# Contains local values that are used to increase DRYness of the code.
locals {
  # max bytes of random id to use as unique suffix. 16 hex chars, each byte takes 2 hex chars
  max_byte_length = 8

  # Example value: "InstanceRole_txtdata-app-dec5ac0e50847943"
  role_name_max_length      = 64
  role_name_format          = "InstanceRole_%s-%s-"
  role_name_prefix          = "${format(local.role_name_format, lower(var.service_name), lower(var.cluster_role))}"
  role_name_max_byte_length = "${(local.role_name_max_length - length(local.role_name_prefix)) / 2}"
  role_name_byte_length     = "${min(local.max_byte_length, local.role_name_max_byte_length)}"
}

# Trust relationship policy document for AWS Service.
data "aws_iam_policy_document" "this" {
  statement {
    actions = ["sts:AssumeRole"]
    effect  = "Allow"

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

# Provides an IAM role name with random value
resource "random_id" "role_name" {
  prefix      = "${local.role_name_prefix}"
  byte_length = "${local.role_name_byte_length}"
}

# Module, the parent module.
module "this" {
  source = "../../"

  role_name        = "${random_id.role_name.hex}"
  role_path        = "/instance-role/"
  role_description = "Instance Role for ${lower(var.service_name)}-${lower(var.cluster_role)}"

  role_tags = "${merge(var.role_tags, map(
    "Service", "${var.service_name}"
    ))}"

  role_assume_policy         = "${data.aws_iam_policy_document.this.json}"
  role_force_detach_policies = "${var.role_force_detach_policies}"
  role_max_session_duration  = "${var.role_max_session_duration}"

  product_domain = "${var.product_domain}"
  environment    = "${var.environment}"
}

# Provides an IAM instance profile.
resource "aws_iam_instance_profile" "this" {
  name = "${replace(random_id.role_name.hex, "Role", "Profile")}"
  path = "/instance-profile/"
  role = "${module.this.role_name}"
}
