# Workspace has to  be created in terraform cloud  before executing the code
# select the respecitve workspace for environment / region where the state file will be maintained
terraform {
  cloud {
    organization = "kmccorp-tfc"

    workspaces {
      name = "alicloud-vpc-test"
    }
  }
}