provider "aws" {
  region = "us-west-2"
}

module "ec2_instance" {
  source = "../modules/ec2"

  instance_name      = "jenkins-agent"
  ami_id             = "ami-071c37af5dc25ebf7"
  instance_type      = "t2.small"
  key_name           = "devops-projects/jenkins"
  subnet_ids         = ["subnet-0859fe5c267568008", "subnet-0be668fe5fdd7a948", "subnet-078d8349252a29db6"]
  instance_count     = 1
}
