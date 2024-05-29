locals {
    network_configs = {
        vpc-name = "DESENVOLVIMENTO"
        vpc-cidr = "10.191.48.0/21"
        vpc-azs = ["us-west-2a", "us-west-2b", "us-west-2c"]
        private-subnets = ["10.191.50.0/24", "10.191.54.0/24", "10.191.51.0/24"]
        public-subnets = ["10.191.52.0/24", "10.191.55.0/24", "10.191.53.0/24"]
        database-subnets = ["10.191.48.0/24", "10.191.49.0/24"]

    }

    eks_configs = {
        cluster-name = "titanio"
        cluster-version = "1.28"
        cluster-node-groups-instance-type = ["t3.medium"]

    }

    tags = {
    "iaac"          = "yes"
    "stack"         = "dev"
    "cost_center"   = "-"
    "owner"         = "-"
    "operation"     = "-"
    "monitoring"    = "-"
    "workload"      = "-"
  }
}