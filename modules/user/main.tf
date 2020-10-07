# Trust relationship policy document for user that requires MFA to be enabled.
data "aws_iam_policy_document" "with_mfa" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = var.trusted_users
    }

    condition {
      test     = "Bool"
      variable = "aws:MultiFactorAuthPresent"
      values   = ["true"]
    }
  }
}

# Trust relationship policy document for user that cannot enable MFA.
data "aws_iam_policy_document" "without_mfa" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = var.trusted_users
    }
  }
}

# Module, the parent module.
module "this" {
  source = "../../"

  role_name        = var.role_name
  role_path        = var.role_path
  role_description = var.role_description
  role_tags        = var.role_tags

  role_assume_policy         = var.mfa_required ? data.aws_iam_policy_document.with_mfa.json : data.aws_iam_policy_document.without_mfa.json
  role_permission_boundary   = var.role_permission_boundary
  role_force_detach_policies = var.role_force_detach_policies
  role_max_session_duration  = var.role_max_session_duration

  product_domain = var.product_domain
  environment    = var.environment
}

