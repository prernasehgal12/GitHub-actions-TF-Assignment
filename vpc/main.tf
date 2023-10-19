resource "aws_vpc" "prerna-vpc"{
    
    cidr_block = var.cidr_block
    instance_tenancy = var.instance_tenancy
    tags = var.tags
}

resource "aws_subnet" "PublicSubnet"{
    vpc_id = var.vpc_id
    cidr_block = "10.0.1.0/24"
}
