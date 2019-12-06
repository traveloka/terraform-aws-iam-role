terraform-aws-iam-role/service
==============================
This module allows you to create an IAM Role for AWS service to perform actions on your behalf.


Usage
-----
You can open this example: [Service Role for Config](https://github.com/traveloka/terraform-aws-iam-role/tree/master/examples/aws-service-config)


Important Notes
---------------
* `aws_service` is string variable, this module is able to create IAM Role only for just one service.
* `aws_service` is usually AWS service's name followed by `.amazonaws.com`. Examples:
  * `lambda.amazonaws.com`
  * `ec2.amazonaws.com`
  * `s3.amazonaws.com`
  * etc.
* IAM Role that is created will have name in this format: "ServiceRoleFor<`aws_service_prefix`>_<`role_identifier`>" (`aws_service_prefix` is `aws_service` without `.amazonaws.com`). `aws_service_prefix` will be capitalized and `role_identifier` will be in lowercase and separated by dash (-). Examples:
  * `ServiceRoleForLambda_example-lambda`
  * `ServiceRoleForEc2_production-backend`
