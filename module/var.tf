variable "loop_ec2" {
  type        = map(any)
}

variable "name" {
    type = string
  
}
# variable "vpc_id" {
#     type = string
  
# }

variable "description" {
    type = string
  
}
variable "tags" {
    type = map(string)
  
}
variable "volume_tags" {
    type = map(string)
  
}
# variable "tags" {
#     type = map(string)
  
# }
variable "cidr_block" {
    type = string
  
}
variable "instance_tenancy" {
    type = string
  
}