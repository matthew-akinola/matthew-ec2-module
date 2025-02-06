variable "ec2_instances" {
  description = "Map of EC2 instances to create"
  type = map(object({
    instance_type      = string
    subnet_id          = string
    security_groups    = list(string)
    iam_instance_profile = string
    user_data          = string # Optional user_data
    ec2_keypair_name   = string
    tags               = map(string)
  }))
}


#this is what your .tfvars values will look like

  # ec2_instances = {
  #   "instance1" = {
  #     instance_type      = "t2.micro"
  #     subnet_id          = "subnet-12345678"
  #     security_groups    = ["sg-12345678"]
  #     iam_instance_profile = "iam-profile-1"
  #     user_data          = null # Optional, can be omitted
  #     ec2_keypair_name   = "my-keypair"
  #     tags               = {
  #       Name = "Instance-1"
  #     }
  #   }}