resource "aws_db_instance" "pre-staging" {

  #Connectivity & Security Tab
  availability_zone      = var.availability_zone
  vpc_security_group_ids = var.vpc_security_group_ids
  db_subnet_group_name   = var.db_subnet_group_name

  #Configuration Tab
  db_name              = var.db_name
  engine               = "mysql"
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  publicly_accessible  = false
  license_model        = "general-public-license"
  parameter_group_name = "binlog-prestaging-mysql8"
  apply_immediately    = false
  deletion_protection  = false

  #Storage Tab Started
  storage_encrypted     = false
  storage_type          = "gp3"
  allocated_storage     = var.allocated_storage
  max_allocated_storage = var.max_allocated_storage
  storage_throughput    = 500
  iops                  = 12000
  #Storage Tab End

  #Performance Insights Tab
  performance_insights_enabled          = var.performance_insights_enabled
  performance_insights_kms_key_id       = var.performance_insights_kms_key_id
  performance_insights_retention_period = var.performance_insights_retention_period


  #Availability Tab
  username                            = "radioly"
  multi_az                            = var.multi_az
  iam_database_authentication_enabled = var.iam_database_authentication_enabled

  #Maintenance and Backup Tab
  auto_minor_version_upgrade = var.auto_minor_version_upgrade
  maintenance_window         = var.maintenance_window
  backup_retention_period    = var.backup_retention_period
  backup_target              = "region"
  backup_window              = var.backup_window
  delete_automated_backups   = var.delete_automated_backups
  skip_final_snapshot        = var.skip_final_snapshot

  #Monitoring Tab
  monitoring_interval             = var.monitoring_interval
  monitoring_role_arn             = var.monitoring_role_arn
  enabled_cloudwatch_logs_exports = var.enabled_cloudwatch_logs_exports
  copy_tags_to_snapshot           = var.copy_tags_to_snapshot

  # Tags Tab

  tags     = var.tags
  tags_all = var.tags
}