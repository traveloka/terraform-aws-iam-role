terraform-aws-iam-role/crossaccount
===================================
This module allows you to create an IAM Role for cross account communication in Traveloka organization. To create external role for 3rd party, use this [external submodule](https://github.com/traveloka/terraform-aws-iam-role/tree/master/modules/external) instead.


Usage
-----
You can open this example: [IAM Role for Cross Account](https://github.com/traveloka/terraform-aws-iam-role/tree/master/examples/cross-account)


Important Notes
---------------
* `role_name`
  * `role_name` should be descriptive.
  * `role_name` should be camel case.
  * `role_name` will be suffixed by 16 character length of random id.
  * `role_name` + random id must not exceed 64 character length.

* Role path will be always prefixed by "/crossaccount/", to add additional path, use `role_path` variable.
  * `role_path` should end with "/". Examples:
    * `role_path = "something/"` -> Valid
    * `role_path = "something"` -> Invalid (ends without forward slash)
    * `role_path = "something/special/"` -> Valid
  * `role_path` that begins with "/" will automatically truncated to prevent double slash in role path. Examples:
    * `role_path = "something/"` will become `/crossaccount/something/`
    * `role_path = "/something/"` will become `/crossaccount/something/`
    * `role_path = "//something/"` will become `/crossaccount//something/`
