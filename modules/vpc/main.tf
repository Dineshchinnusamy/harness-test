# will create multiple VPCs, calling module to send a map with the structure mentioned in variables.tf

resource "alicloud_vpc" "ali_vpcs" {
   
  vpc_name   = "vpc-mi-${var.region}-${var.environment}-${var.vpc_name}"
  cidr_block = var.vpc_cidr_block
  tags       = var.vpc_tags
 
}
