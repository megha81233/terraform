
module "ec2" {
    source = "./modules/ec2/"
    ami_id = "ami-0ddfba243cbee3768"
    type = "t2.micro"
    key = "mykey"
  
}

module "rds" {
    source = "./modules/rds"

  
}

module "s3" {
    source = "./modules/s3"
  
}