
provider "aws" {
  region = "ap-southeast-1"
}

module "rds_enhanced_monitoring" {
  source = "../../modules/service"

  role_identifier  = "RDS Enhanced Monitoring"
  role_description = "Provides access to Cloudwatch for RDS Enhanced Monitoring"
  aws_service      = "monitoring.rds.amazonaws.com"
  product_domain   = "tsi"
  environment      = "testing"
}
