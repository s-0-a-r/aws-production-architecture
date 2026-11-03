# ネットワークモジュール (VPC, サブネット4, IGW, ルートテーブル)
module "vpc" {
  source = "../../modules/vpc"

  project_name         = var.project_name
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet_cidrs = ["10.0.11.0/24", "10.0.12.0/24"]
  availability_zones   = ["${var.aws_region}a", "${var.aws_region}c"]
}

# 負荷分散 & Webサーバーモジュール (ALB, SG連鎖, Multi-AZ EC2)
module "compute_alb" {
  source = "../../modules/compute_alb"

  project_name      = var.project_name
  environment       = var.environment
  vpc_id            = module.vpc.vpc_id
  public_subnet_ids = module.vpc.public_subnet_ids
  instance_type     = "t3.micro"
}

# データベースモジュール (DBサブネットグループ, RDS Multi-AZ, Secrets Manager)
module "database_rds" {
  source = "../../modules/database_rds"

  project_name          = var.project_name
  environment           = var.environment
  vpc_id                = module.vpc.vpc_id
  private_subnet_ids    = module.vpc.private_subnet_ids
  web_security_group_id = module.compute_alb.web_security_group_id
  db_name               = "production_db"
  db_username           = "dbadmin"
}
