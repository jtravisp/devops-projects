variable "instance_profile_name" {
  type    = string
  default = "jenkins-profile"
}

variable "iam_policy_name" {
  type    = string
  default = "jenkins-iam-policy"
}

variable "role_name" {
  type    = string
  default = "jenkins-role"
}
