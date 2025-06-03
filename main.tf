module "vpc" {
  source = "./modules/vpc"

  cidr_block     = "10.0.0.0/16"
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
}

module "eks" {
  source = "./modules/eks"

  cluster_name = var.cluster_name
  region       = var.aws_region

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  node_group_desired_capacity = var.node_group_desired_capacity
  node_group_max_size         = var.node_group_max_size
  node_group_min_size         = var.node_group_min_size
}
