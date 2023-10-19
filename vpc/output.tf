output "vpc_id" {
    value = aws_vpc.prerna-vpc.id
}
output "subnet_id" {
    value = aws_subnet.PublicSubnet.id
}