# Connectivity & Security Tab
availability_zone      = "ap-southeast-1a"
vpc_security_group_ids = ["sg-0a8d10dbc80XXXXXX"]
db_subnet_group_name   = "default-vpc-0133582cccXXXXXX"

# Configuration Tab
db_name                             = "radioly"
engine_version                      = "8.0.28" //default: 8.0.28
instance_class                      = "db.t3.large"
multi_az                            = false //default: false
iam_database_authentication_enabled = true  //default: true
auto_minor_version_upgrade          = true
maintenance_window                  = "mon:22:42-mon:23:12"
backup_retention_period             = 5             //Options: 1 - 35 days
backup_window                       = "22:10-22:40" //
delete_automated_backups            = true          //default: true
skip_final_snapshot                 = true          // default: true

# Storage Tab
allocated_storage     = 1200  //default: 100
max_allocated_storage = 1700  //default: 110 
storage_type          = "gp3" //default: gp3

# Performance Insights Tab
performance_insights_enabled          = true //default: true
performance_insights_kms_key_id       = "arn:aws:kms:ap-southeast-1:856XXXXXXX:key/720441a4-334f-4cd4-853d-06XXXXXX"
performance_insights_retention_period = 7 //default: 7 days

# Monitoring Tab
monitoring_interval             = 60 //options:  
monitoring_role_arn             = "arn:aws:iam::85651XXXXXXX:role/rds-monitoring-role"
enabled_cloudwatch_logs_exports = ["error", "slowquery"]
copy_tags_to_snapshot           = true //default     = true

# Tags Tab

tags = {
  "application"  = "common"
  "architecture" = "x86"
  "cost"         = "backend"
  "env"          = "qa"
  "role"         = "standalone"
  "service"      = "mysql"
}
