# will create multiple vswitches, calling module to send a map with the structure mentioned in variables.tf

# map input is flattened
locals {
  flattened_map = flatten([
    for vswname, cidrlist in var.vswmap : [
      for index, cidr in cidrlist : {
        cidr_block  = cidr
        zone_id = var.zones[index]
        vsw_name = "vsw-mi-${var.region}-${substr(var.zones[index],-1,-1)}-${var.environment}-${vswname}"
      }
    ]
  ])
}


resource "alicloud_vswitch" "ali_vswitches" {
  for_each = { for subnet in local.flattened_map : "${subnet.vsw_name}.${subnet.cidr_block}" => subnet }
  cidr_block = each.value.cidr_block
  vswitch_name = each.value.vsw_name
  vpc_id  = "${var.vpc_id}"
  zone_id = each.value.zone_id

  tags       = var.vswitch_tags
}


