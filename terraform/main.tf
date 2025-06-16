module "network" {
  source = "./modules/network"
}

module "ecs" {
  source = "./modules/ecs"

  ecr_repository_url = var.ecr_repository_url
  subnet_id          = module.network.public_subnet_id
  security_group_id  = module.network.security_group_id
  public_subnet_id   = module.network.public_subnet_id // Pass public subnet ID
}

module "storage" {
  source = "./modules/storage"
}
