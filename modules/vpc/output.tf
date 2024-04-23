output "vpc_map_output" {
     value = alicloud_vpc.ali_vpcs
}

output "vpc_id" {
     value = alicloud_vpc.ali_vpcs.id
}
