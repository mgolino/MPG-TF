#variable "instance_type" {
#  description = "Type of EC2 instance to provision"
#  default     = "t3.nano"
#}
variable "vpc_id" {
  description = "VPC ID to use if not creating VPC."
  default     = "vpc-0f72d0fcb34f25235"
  type        = string
}
