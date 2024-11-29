provider "aws" {
  region = "us-west-2"
}

module "efs_module" {
  source = "../modules/efs"
  vpc_id     = "vpc-0514f8d22a810460d"
  subnet_ids = ["subnet-0859fe5c267568008", "subnet-0be668fe5fdd7a948", "subnet-078d8349252a29db6"]
}
