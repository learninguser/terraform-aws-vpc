output "public_subnets" {
  value = aws_subnet.public
}

output "vpc_id" {
  value = aws_vpc.main.id
}