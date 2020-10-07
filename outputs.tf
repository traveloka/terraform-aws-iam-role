output "aws_account_id" {
  description = "The AWS Account ID number of the account that owns or contains the calling entity."
  value       = data.aws_caller_identity.current.account_id
}

output "aws_caller_arn" {
  description = "The AWS ARN associated with the calling entity."
  value       = data.aws_caller_identity.current.arn
}

output "aws_caller_user_id" {
  description = "The unique identifier of the calling entity."
  value       = data.aws_caller_identity.current.user_id
}

output "role_name" {
  description = "The name of the role."
  value       = element(concat(aws_iam_role.this.*.name, [""]), 0)
}

output "role_arn" {
  description = "The Amazon Resource Name (ARN) specifying the role."
  value       = element(concat(aws_iam_role.this.*.arn, [""]), 0)
}

output "role_description" {
  description = "The description of the role."
  value       = element(concat(aws_iam_role.this.*.description, [""]), 0)
}

output "role_create_date" {
  description = "The creation date of the IAM role."
  value       = element(concat(aws_iam_role.this.*.create_date, [""]), 0)
}

output "role_unique_id" {
  description = "The stable and unique string identifying the role."
  value       = element(concat(aws_iam_role.this.*.unique_id, [""]), 0)
}

