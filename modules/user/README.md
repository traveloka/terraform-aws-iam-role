terraform-aws-iam-role/user
===========================
This module allows you to create an IAM Role for User.


Usage
-----
You can open this example: [IAM Role for User](https://github.com/traveloka/terraform-aws-iam-role/tree/master/examples/user-iam)


Important Notes
---------------
* `mfa_required` is optional variable, default to `true`, and recommended value is also `true`. Only set the value to `false` if the user can not use MFA.
