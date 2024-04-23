
variable "vpc_id" {}

variable "vswmap"  {
   default ={
       "black-reserved" = []
    "black-app" = []
    "black-idmz" = []
    "red-app" = []
    "red-data" = []
    "red-reserved" = []
   }
}

variable "zones" {
   default = []
} 

variable "environment" {
   default = ""  
}

variable "region" {
   default = ""
}

variable "vswitch_tags" {
  type        = map(string)
}