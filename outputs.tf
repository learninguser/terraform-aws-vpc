output "public_subnets" {
  value = aws_subnet.public
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "azs"{
  value = local.azs
}

output "public_subnet_ids" {
  value = aws_subnet.public[*].id
}