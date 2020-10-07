data "aws_iam_policy_document" "doc" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = var.trusted_role_arns
    }
  }
}

module "aws-resource-naming_iam_role" {
  source        = "git::https://github.com/traveloka/terraform-aws-resource-naming.git?ref=v0.19.1"
  name_prefix   = var.role_name
  resource_type = "iam_role"
}

locals {
  additional_role_path = substr(var.role_path, 0, 1) == "/" ? substr(var.role_path, 1, length(var.role_path) - 1) : var.role_path
}

# Module, the parent module.
module "crossacount" {
  source = "../../"

  role_name        = module.aws-resource-naming_iam_role.name
  role_path        = "/crossaccount/${local.additional_role_path}"
  role_description = var.role_description

  role_tags = merge(
    var.role_tags,
    {
      "Service" = var.service_name
    },
  )

  role_assume_policy         = data.aws_iam_policy_document.doc.json
  role_permission_boundary   = var.role_permission_boundary
  role_force_detach_policies = var.role_force_detach_policies
  role_max_session_duration  = var.role_max_session_duration

  product_domain = var.product_domain
  environment    = var.environment
}

