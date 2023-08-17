# Connectivity & Security Tab

variable "availability_zone" {
  description = "AV Zone for RDS Instance."
  type        = string
}

variable "vpc_security_group_ids" {
  description = "Security Group ID for RDS Instance."
  type        = list(string)
}

variable "db_subnet_group_name" {
  description = "Subnet Group Name for RDS Instance."
  type        = string
}

# Connectivity & Security End

# Configuration Tab Start

variable "db_name" {
  description = "Database Name for RDS Instance."
  type        = string
}

variable "engine_version" {
  description = "Database Engine Version."
  type        = string
}

variable "instance_class" {
  description = "RDS Instance class."
  type        = string
}

# Configuration Tab End

# Storage Tab Start

variable "allocated_storage" {
  description = "Amount of storage to allocate for the RDS instance."
  type        = number
  default     = 100
}

variable "max_allocated_storage" {
  description = "Maximum amount of storage for RDS instance."
  type        = number
  default     = 110
}

variable "storage_type" {
  description = "Type of storage for RDS."
  type        = string
  default     = "gp3"
}

# Storage Tab Start

# Performance Insights Tab Start
variable "performance_insights_enabled" {
  description = "Whether to enable Performance Insights."
  type        = bool
  default     = true
}

variable "performance_insights_kms_key_id" {
  description = "KMS Key ID for Performance Insights."
  type        = string
}

variable "performance_insights_retention_period" {
  description = "Retention period for Performance Insights."
  type        = number
  default     = 7
}

# Performance Insights Tab End

# Availability Tab Start
variable "multi_az" {
  description = "Whether the RDS instance is multi-AZ."
  type        = bool
  default     = false
}

variable "iam_database_authentication_enabled" {
  description = "Enable IAM DB Authentication."
  type        = bool
  default     = true
}

# Availability Tab End

# Maintenance and Backup Tab
variable "auto_minor_version_upgrade" {
  description = "Automatically upgrade minor version."
  type        = bool
}

variable "maintenance_window" {
  description = "Preferred window for RDS maintenance."
  type        = string
}

variable "backup_retention_period" {
  description = "Number of days backups will be retained."
  type        = number
  default     = 5
}

variable "backup_window" {
  description = "Preferred window for RDS backups."
  type        = string
}

variable "delete_automated_backups" {
  description = "Delete automated backups when RDS is deleted."
  type        = bool
  default     = true
}

variable "skip_final_snapshot" {
  description = "Skip the creation of a final DB snapshot."
  type        = bool
  default     = true
}
# Maintenance and Backup Tab End


# Monitoring Tab Start
variable "monitoring_interval" {
  type = number
}

variable "monitoring_role_arn" {
  description = "The ARN for the IAM role that permits RDS to send enhanced monitoring metrics to CloudWatch Logs."
  type        = string
}

variable "enabled_cloudwatch_logs_exports" {
  description = "List of log types to enable for exporting to CloudWatch logs."
  type        = list(string)
}

variable "copy_tags_to_snapshot" {
  description = "Copy all Instance tags to the snapshot."
  type        = bool
  default     = true
}
# Monitoring Tab End

# Tags Tab Start
variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
}
# Tags Tab End