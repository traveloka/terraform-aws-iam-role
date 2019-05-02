terraform-aws-iam-role/external
===============================
This module is meant to create IAM Role for 3rd party AWS Account. To create cross account IAM role between products in Traveloka organization, use [crossaccount submodule](https://github.com/traveloka/terraform-aws-iam-role/tree/master/modules/crossaccount)


Usage
-----
You can open this example: [IAM Role for 3rd Party AWS Account](https://github.com/traveloka/terraform-aws-iam-role/tree/master/examples/external_account)


Important Notes
---------------
* `role_path` should begin with "/external/" and end with "/". Examples:
  * `role_path = "/external/"` -> Valid
  * `role_path = "/external"` -> Invalid (ends without forward slash)
  * `role_path = "external/"` -> Invalid (begins without forward slash)
  * `role_path = "external"` -> Invalid (begins and ends without forward slash)
  * `role_path = "/external/vendors/"` -> Valid
  * `role_path = "/external/vendors"` -> Invalid (ends without forward slash)
  * `role_path = "/external/vendors/special/"` -> Valid
  * `role_path = "/vendors/special/"` -> Invalid (begins without "/external/")
* `external_id` is required. Fill this value with an ID provided by 3rd party.
