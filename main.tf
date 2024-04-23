# module to create multiple VPCs based on the vpcmap input variable
module "create_vpc" {
  source         = "./modules/vpc"
  vpc_name       = var.vpc_name
  vpc_cidr_block = var.vpc_cidr_block
  environment    = var.environment
  region         = var.region
  vpc_tags       = var.tags
}

module "create_vpc_sec_cidr" {
 source               = "./modules/vpc_sec_cidr"
 vpc_id               = module.create_vpc.vpc_id
 secondary_cidr_block = var.secondary_cidr_block
 create_sec_cidr      = var.create_sec_cidr
}


module "create_vswitch" {
  source       = "./modules/vswitch"

  depends_on   = [module.create_vpc, module.create_vpc_sec_cidr]

  vpc_id       = module.create_vpc.vpc_id
  vswmap       = var.vswmap
  zones        = var.zones
  environment  = var.environment
  region       = var.region
  vswitch_tags = var.tags
}

