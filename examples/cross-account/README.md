example/cross-account
=====================

This example will create an IAM Role for cross-account communication for SQS read access, but this example doesn't address on how to update resource policy. Use module output to get the IAM role arn, `module.yourmodulename.role_arn`

To use this example, you need to change `trusted_role_arns` option in `main.tf` with actual IAM role ARN(s).
