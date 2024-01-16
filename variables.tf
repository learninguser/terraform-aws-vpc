variable "project_name" {
  type = string
}

variable "environment" {
  type = string
  default = "env"
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
  type = map
}

variable "vpc_tags" {
  type = map
  default = {}
}

variable "igw_tags" {
  type = map
  default = {}
}

variable "public_subnet_cidr" {
  type = list
  validation {
    condition = length(var.public_subnet_cidr) == 2
    error_message = "Please provide 2 CIDR's for public subnet"
  }
}

variable "public_subnet_names" {
  type = list
  default = []
}

variable "private_subnet_cidr" {
  type = list
  validation {
    condition = length(var.private_subnet_cidr) == 2
    error_message = "Please provide 2 CIDR's for private subnet"
  }
}

variable "private_subnet_names" {
  type = list
  default = []
}

variable "database_subnet_cidr" {
  type = list
  validation {
    condition = length(var.database_subnet_cidr) == 2
    error_message = "Please provide 2 CIDR's for database subnet"
  }
}

variable "database_subnet_names" {
  type = list
  default = []
}

variable "public_route_table_tags" {
  type = map
  default = {}
}

variable "private_route_table_tags" {
  type = map
  default = {}
}

variable "database_route_table_tags" {
  default = {}
  type = map
}

variable "nat_gateway_tags" {
  type = map
  default = {}
}

variable "db_subnet_group_tags" {
  type = map
  default = {}
}