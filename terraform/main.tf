module "network" {
  source = "./modules/network"
}

module "ecs" {
  source = "./modules/ecs"

  ecr_repository_url = var.ecr_repository_url
  subnet_id          = module.network.public_subnet_id
  security_group_id  = module.network.security_group_id
  region             = var.region
  environment        = var.environment
}

module "storage" {
  source = "./modules/storage"
}

module "database" {
  source            = "./modules/database"
  subnet_ids        = module.network.private_subnet_ids
  security_group_ids = [module.network.security_group_id]
  db_username       = var.db_username
  db_password       = var.db_password
  region            = var.region
  environment       = var.environment
}

module "alb" {
  source            = "./modules/alb"
  environment       = var.environment
  subnet_ids        = module.network.public_subnet_ids
  security_group_ids = [module.network.security_group_id]
  vpc_id            = module.network.vpc_id
  ecs_task_arn      = module.ecs.task_arn
  region            = var.region
}


module "cloudwatch" {
  source           = "./modules/cloudwatch"
  ecs_cluster_name = var.ecs_cluster_name
}