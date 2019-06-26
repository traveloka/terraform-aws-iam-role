# terraform-aws-iam-role

Terraform module to create AWS IAM Role. 
Currently supported type of Roles are:
1. Role for AWS Service
2. Role for IAM User
3. Role for External AWS Account
4. Role for Instance Profile


##Usage

This module will only create an IAM Role and its Trust Relationships policy document. You need to attach your own Permission policy document outside the module.

To use a particular type of supported role, you can go into `modules` folder and read `README.md` at each subfolder for more detailed information.

To understand better on how to implement this module, you can go into `examples` folder and try them.


## Modules

* [AWS Service](https://github.com/traveloka/terraform-aws-iam-role/tree/master/modules/service)
* [IAM User](https://github.com/traveloka/terraform-aws-iam-role/tree/master/modules/user)
* [External AWS Account](https://github.com/traveloka/terraform-aws-iam-role/tree/master/modules/external)
* [Instance Profile](https://github.com/traveloka/terraform-aws-iam-role/tree/master/modules/instance)


## Examples

* [Service Role for Config](https://github.com/traveloka/terraform-aws-iam-role/tree/master/examples/aws-service-config)
* [IAM Role for User](https://github.com/traveloka/terraform-aws-iam-role/tree/master/examples/user-iam)
* [IAM Role for 3rd Party AWS Account](https://github.com/traveloka/terraform-aws-iam-role/tree/master/examples/external-account)
* [IAM Role for Instance Profile](https://github.com/traveloka/terraform-aws-iam-role/tree/master/examples/instance-profile)


## Terraform Version

This module was created using Terraform 0.11.4. 
So to be more safe, Terraform version 0.11.4 or newer is required to use this module.


## AWS Provider Version

Minimum required version for AWS Provider is 1.14.0


## Author

[Rafi Kurnia Putra](https://github.com/rafikurnia)


## Contributors

* [Darwin Wirawan](https://github.com/nin9swells)


## License

Apache 2 Licensed. See LICENSE for full details.
