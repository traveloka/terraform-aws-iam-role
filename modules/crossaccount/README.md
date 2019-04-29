terraform-aws-iam-role/crossaccount
===================================
This module allows you to create an IAM Role for cross account communication in Traveloka organization. To create external role for 3rd party, use this [external submodule](https://github.com/traveloka/terraform-aws-iam-role/tree/master/modules/external) instead.


Usage
-----
You can open this example: [IAM Role for Cross Account](https://github.com/traveloka/terraform-aws-iam-role/tree/master/examples/cross-acount)


Important Notes
---------------
* `role_name`
  * `role_name` should be descriptive.
  * `role_name` should be camel case.
  * `role_name` will be suffixed by 16 character length of random id.
  * `role_name` + random id must not exceed 64 character length.

* `role_path` should begin and end with "/crossaccount/". Examples:
  * `role_path = "/crossaccount/"` -> Valid
  * `role_path = "/crossaccount"` -> Invalid (ends without forward slash)
  * `role_path = "crossaccount/"` -> Invalid (begins without forward slash)
  * `role_path = "crossaccount"` -> Invalid (begins and ends without forward slash)
  * `role_path = "/crossaccount/something/"` -> Valid
  * `role_path = "/crossaccount/something"` -> Invalid (ends without forward slash)
  * `role_path = "/crossaccount/something/special/"` -> Valid
  * `role_path = "/crossaccount/special/"` -> Invalid (begins without "/crossaccount/")
* `external_id` is required. Fill this value with an ID provided by 3rd party.

