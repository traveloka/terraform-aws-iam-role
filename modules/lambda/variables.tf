variable "product_domain" {
  description = "Abbreviation of product domain these resources belong to."
  type        = string
}

variable "service_name" {
  description = "The name of the service that going to assume this role."
  type        = string
  default     = ""
}

variable "descriptive_name" {
  description = "Brief description of Lambda Function. It will be added to the role name. Example value: 'Periodic Scheduler'"
  type        = string
}

variable "role_force_detach_policies" {
  description = "Specifies to force detaching any policies the role has before destroying it."
  default     = false
}

variable "role_max_session_duration" {
  description = "The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours."
  default     = 3600
}

variable "role_permission_boundary" {
  description = "IAM policy ARN limiting the maximum access this role can have"
  type        = string
  default     = ""
}

variable "lambda_type" {
  description = "type of lambda , if lambda edge this variable should be true"
  default     = false
}

variable "environment" {
  type        = string
  description = "Will be used in Environment tag"
}

variable "role_tags" {
  description = "Additional tags to be put on iam role"
  type        = map(string)
  default     = {}
}

