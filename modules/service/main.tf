provider "random" {
  version = ">= 1.2.0, < 3.0.0"
}

# Contains local values that are used to increase DRYness of the code.
locals {
  # max bytes of random id to use as unique suffix. 16 hex chars, each byte takes 2 hex chars
  max_byte_length = 8

  # Example value: "ServiceRoleForConfig_default-config-dec5ac0e50847943"
  role_name_max_length = 64
  role_name_format     = "ServiceRoleFor%s_%s-"
  role_name_prefix = format(
    local.role_name_format,
    title(element(split(".", var.aws_service), 0)),
    join("-", split(" ", lower(var.role_identifier))),
  )
  role_name_max_byte_length = (local.role_name_max_length - length(local.role_name_prefix)) / 2
  role_name_byte_length     = min(local.max_byte_length, local.role_name_max_byte_length)
}

# Trust relationship policy document for AWS Service.
data "aws_iam_policy_document" "this" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = [var.aws_service]
    }
  }
}

# Provides an IAM role name with random value
resource "random_id" "role_name" {
  prefix      = local.role_name_prefix
  byte_length = local.role_name_byte_length
}

# Module, the parent module.
module "this" {
  source = "../../"

  role_name        = random_id.role_name.hex
  role_path        = "/service-role/${var.aws_service}/"
  role_description = var.role_description
  role_tags        = var.role_tags

  role_assume_policy         = data.aws_iam_policy_document.this.json
  role_permission_boundary   = var.role_permission_boundary
  role_force_detach_policies = var.role_force_detach_policies
  role_max_session_duration  = var.role_max_session_duration

  product_domain = var.product_domain
  environment    = var.environment
}

