module "eks" {
    source = "terraform-aws-modules/eks/aws"
    version = "20.8.5"
    
    cluster_name = local.eks_configs.cluster-name
    cluster_version = local.eks_configs.cluster-version
    enable_cluster_creator_admin_permissions = true

    subnet_ids = module.vpc.private_subnets
    vpc_id = module.vpc.vpc_id

    cluster_endpoint_public_access = true

    eks_managed_node_groups = {
        default = {
          min_size = 2
          max_size = 2
          desired_size = 2

          instance_type = local.eks_configs.cluster-node-groups-instance-type
        }
    }

  tags = merge(local.tags, {
    Name = "${local.eks_configs.cluster-name}"
  })    
    
}
