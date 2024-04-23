# will create multiple VPCs, calling module to send a map with the structure mentioned in variables.tf

resource "alicloud_vpc_ipv4_cidr_block" "create_vpc_sec_cidr" {
  
  count                = var.create_sec_cidr ? 1 : 0
  secondary_cidr_block = var.secondary_cidr_block
  vpc_id               = var.vpc_id

}
