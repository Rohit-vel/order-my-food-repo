variable "region" {
  default = "ap-south-1"
}
variable "access_key" {
  default = "AKIASA3APD2MX7NIYN**"
}
variable "secrete_key" {
  default = "HxRmzDtPRfcyDaxLq5IOTdeYsqv2OGLlVoiPYv**"
}
variable "environment" {
  default = "Development"
}
variable "vpc_cidr" {
  description = "VPC cidr block"
}
variable "public_subnet_1_cidr" {
  description = "Public Subnet 1 cidr block"
}
variable "public_subnet_2_cidr" {
  description = "Public Subnet 2 cidr block"
}
variable "public_subnet_3_cidr" {
  description = "Public Subnet 3 cidr block"
}
variable "private_subnet_1_cidr" {
  description = "Private Subnet 1 cidr block"
}
variable "private_subnet_2_cidr" {
  description = "Private Subnet 2 cidr block"
}
variable "private_subnet_3_cidr" {
  description = "Private Subnet 3 cidr block"
}
variable "instance_type" {

}
variable "instance_ami" {

}
variable "key_name" {

}

