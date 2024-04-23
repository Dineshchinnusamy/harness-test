#alicloud provider, creates the resources in the specific region in the variable
provider "alicloud" {
  region = var.region
#     access_key = var.access_key
#   secret_key= var.secret_key
# assume_role {
#   role_arn = "${var.alicloud_arn_id}"
# } 
}

