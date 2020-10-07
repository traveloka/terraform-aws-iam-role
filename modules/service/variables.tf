variable "role_identifier" {
  description = "Brief description to identify the role. It will be appended as suffix to the role name. Example value: 'Default Config'"
  type        = string
}

variable "role_description" {
  description = "The description of the role."
  type        = string
}

variable "role_force_detach_policies" {
  description = "Specifies to force detaching any policies the role has before destroying it."
  default     = false
}

variable "aws_service" {
  description = "AWS service that are allowed to perform actions granted on your behalf. Example value: 'config.amazonaws.com'"
  type        = string
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

variable "product_domain" {
  description = "Abbreviation of the product domain the created resources belong to"
  type        = string
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

