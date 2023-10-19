module "ec2" {
  source = "../ec2"
  for_each = var.loop_ec2
  ami           = each.value.ami
  instance_type = each.value.instance_type
  subnet_id = module.vpc.subnet_id
  tags = merge(var.tags,{Name = each.key})
  volume_tags = merge(var.volume_tags,{Name = each.key})
(*   #owner = each.value.owner
  #name = each.key
  #purpose = each.value.purpose *)
  security_group_id    = module.security_group.sg_id
  
}

module "security_group" {
    source = "../security_group"
    name        = var.name
    description = var.description
    vpc_id      = module.vpc.vpc_id
    
}

module "vpc" {
  source = "../vpc"
  vpc_id = module.vpc.vpc_id
  cidr_block = var.cidr_block
  instance_tenancy = var.instance_tenancy
  tags = var.tags 
}
