variable "role_name" {
  description = "The name of the role. It will forces new resource on change."
  type        = string
}

variable "role_path" {
  description = "The path to the role. See https://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html for more information."
  type        = string
  default     = "/external/"
}

variable "role_description" {
  description = "The description of the role."
  type        = string
}

variable "role_force_detach_policies" {
  description = "Specifies to force detaching any policies the role has before destroying it."
  default     = "false"
}

variable "account_id" {
  description = "AWS Account ID that is allowed to assume this role."
  type        = string
}

variable "external_id" {
  description = "External ID provided by third party."
  type        = string
}

variable "role_max_session_duration" {
  description = "The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours."
  default     = "3600"
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

