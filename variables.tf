variable "project_name" {
  type = string
}

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
  validation {
    condition = length(var.public_subnet_cidr) == 2
    error_message = "Please provide 2 CIDR's for public subnet"
  }
}

variable "public_subnet_names" {
  type = list(any)
}

variable "private_subnet_cidr" {
  type = list(any)
  validation {
    condition = length(var.private_subnet_cidr) == 2
    error_message = "Please provide 2 CIDR's for private subnet"
  }
}

variable "private_subnet_names" {
  type = list(any)
}

variable "database_subnet_cidr" {
  type = list(any)
  validation {
    condition = length(var.database_subnet_cidr) == 2
    error_message = "Please provide 2 CIDR's for database subnet"
  }
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

variable "nat_gateway_tags" {
  type = map(any)
}

variable "db_subnet_group_tags" {
  type = map(any)
}