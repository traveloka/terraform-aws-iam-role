variable "service_name" {
  description = "The name of the service that going to assume this role. If service_name is not suitable for your use case, you can put Product Domain Abbreviations here."
  type        = "string"
}

variable "descriptive_name" {
  description = "Brief description of Lambda Function. It will be added to the role name. Example value: 'Periodic Scheduler'"
  type        = "string"
}

variable "role_force_detach_policies" {
  description = "Specifies to force detaching any policies the role has before destroying it."
  default     = false
}

variable "role_max_session_duration" {
  description = "The maximum session duration (in seconds) that you want to set for the specified role. If you do not specify a value for this setting, the default maximum of one hour is applied. This setting can have a value from 1 hour to 12 hours."
  default     = 3600
}