module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"
  name = local.network_configs.vpc-name
  cidr = local.network_configs.vpc-cidr

  azs             = local.network_configs.vpc-azs
  private_subnets = local.network_configs.private-subnets
  public_subnets  = local.network_configs.public-subnets
  database_subnets = local.network_configs.database-subnets

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = merge(local.tags, {
    Name = "${local.network_configs.vpc-name}"
  }) 
}