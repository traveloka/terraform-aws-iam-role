# Get the access to the effective Account ID, User ID, and ARN in which Terraform is authorized.
data "aws_caller_identity" "current" {}

# Provides an IAM role.
resource "aws_iam_role" "this" {
  name        = "${var.role_name}"
  path        = "${var.role_path}"
  description = "${var.role_description}"

  assume_role_policy    = "${var.role_assume_policy}"
  force_detach_policies = "${var.role_force_detach_policies}"
  max_session_duration  = "${var.role_max_session_duration}"

  tags = "${merge(var.role_tags, map(
    "Name", var.role_name,
    "Environment", var.environment,
    "ProductDomain", var.product_domain,
    "Description", var.role_description,
    "ManagedBy", "terraform",
     ))}"
}
