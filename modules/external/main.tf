provider "null" {
  version = "1.0.0"
}

# Work around to throws an exception. 
# It throws exception when the provided path does not begin and end with a forward slash.
resource "null_resource" "is_path_valid" {
  count                                     = "${substr(var.role_path, 0, 10) != "/external/" ? 1 : 0}"
  "Path names must begin with '/external/'" = "true"
}

# Trust relationships policy document
data "aws_iam_policy_document" "doc" {
  statement = {
    sid     = "AllowAssumeRoleForAnotherAccount"
    actions = ["sts:AssumeRole"]

    principals = {
      type        = "AWS"
      identifiers = ["${var.account_id}"]
    }

    condition = [
      {
        test     = "StringEquals"
        variable = "sts:ExternalId"

        values = ["${var.external_id}"]
      },
    ]
  }
}

# Module, the parent module.
module "this" {
  source = "../../"

  role_name        = "${var.role_name}"
  role_path        = "${var.role_path}"
  role_description = "${var.role_description}"

  role_assume_policy         = "${data.aws_iam_policy_document.doc.json}"
  role_force_detach_policies = "${var.role_force_detach_policies}"
  role_max_session_duration  = "${var.role_max_session_duration}"
}
