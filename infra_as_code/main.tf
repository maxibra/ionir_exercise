provider "aws" {
  region = "us-west-2"
}

module "task_vpc" {
  source = "github.com/maxibra/terraform_modules_system//task_vpc/?ref=0.0.1"

  vpc_name            = var.vpc_name
  vpc_cidr            = var.vpc_cidr
  vpc_azs             = var.vpc_azs
  vpc_private_subnets = var.vpc_private_subnets
  vpc_public_subnets  = var.vpc_public_subnets

}
