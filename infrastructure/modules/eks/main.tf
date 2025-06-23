module "eks" {
  source                        = "terraform-aws-modules/eks/aws"
  cluster_name                  = "${var.project}-eks"
  cluster_version               = "1.24"
  subnets                       = var.subnet_ids
  vpc_id                        = var.vpc_id
  manage_aws_auth               = true
  cluster_endpoint_public_access = true

  tags = {
    Environment = "dev"
    Project     = var.project
  }
}

