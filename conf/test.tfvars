environment = "perf"
region="cn-shanghai"

# select zones as per service availability (verified in aliyun console)


vpc_name = "app1"
vpc_cidr_block =  "172.31.0.0/23" 



create_sec_cidr = true
secondary_cidr_block = "10.0.0.0/19"

# group similar Vswitches as a list and specify in list entry
vswmap =  {
    "vswitch1" = ["172.31.1.96/27"]  
    "vswitch2" = ["172.31.1.128/27"]  
    "vswitch3" = ["172.31.1.160/27"] 
    "vswitch4-secondary" = ["10.0.21.0/24"]
    "vswitch5-secondary" = ["10.0.23.32/27"]
   }
zones = ["cn-shanghai-l","cn-shanghai-m","cn-shanghai-g" ]
  
tags = {
    environment = "perf"
    createdBy   = "automation"
    owner       = "ssast324"
    dud         = "2158" 
}