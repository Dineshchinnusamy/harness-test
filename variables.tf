variable "environment" {
   default = ""
}

# variable "vpcmap" {
#    default   = {
#     vpc_name = "vpc_cidr_block"
#    }
# }

variable "region" {
   default = ""
}

variable "vpc_cidr_block" {
   default = ""
}

variable "vpc_sec_cidr_block" {
   type    = list(string)
   default = [""]
}

variable "vpc_name" {
   default = ""
}

variable "zones" {
   default = []
} 

variable "alicloud_arn_id" {
  default  = "acs:ram::5847154497661918:role/mi-admin"
}

variable "vpc_id" {
  default  = ""
}

variable "vswmap"  {
   default ={
    "black-reserved" = []
    "black-app"      = []
    "black-idmz"     = []
    "red-app"        = []
    "red-data"       = []
    "red-reserved"   = []
   }
}

variable "access_key" {
   default = ""
}

variable "secret_key" {
   default = ""
} 

variable "tags" {
  type     = map(string)
  default = {
  }
}

variable "create_sec_cidr" {
   type    = bool
   default = false
}
variable "secondary_cidr_block" {
   type    = string
   default = ""
}

# variable "vpc_name" {
#   default = ""
# }