variable "cidr_block" {
  type = string
}

# Optional as default value is set
variable "enable_dns_hostnames" {
  type    = bool
  default = true
}

# Optional as default value is set
variable "enable_dns_support" {
  type    = bool
  default = true
}

variable "common_tags" {
  type = map(any)
}

variable "vpc_tags" {
  type = map(any)
}

variable "igw_tags" {
  type = map(any)
}

variable "public_subnet_cidr" {
  type = list(any)
}

variable "azs" {
  type = list(any)
}

variable "public_subnet_names" {
  type = list(any)
}

variable "private_subnet_cidr" {
  type = list(any)
}

variable "private_subnet_names" {
  type = list(any)
}

variable "database_subnet_cidr" {
  type = list(any)
}

variable "database_subnet_names" {
  type = list(any)
}

variable "public_route_table_tags" {
  type = map(any)
}

variable "private_route_table_tags" {
  type = map(any)
}

variable "database_route_table_tags" {
  type = map(any)
}