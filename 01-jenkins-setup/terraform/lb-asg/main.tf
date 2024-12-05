provider "aws" {
  region = "us-west-2"
}

module "lb-asg" {
  source        = "../modules/lb-asg"
  subnets       = ["subnet-0859fe5c267568008", "subnet-0be668fe5fdd7a948", "subnet-078d8349252a29db6"]
  ami_id        = "ami-0c0854f419b3cbb21"
  instance_type = "t2.small"
  key_name      = "devops-projects/jenkins"
  environment   = "dev"
  vpc_id        = "vpc-0514f8d22a810460d"
}
