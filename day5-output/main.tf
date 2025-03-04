resource "aws_instance" "dev" {
    ami = "ami-03c68e52484d7488f"
    instance_type = "t2.micro"
    key_name = "mykey"
    availability_zone ="ap-south-1a"
    tags = {
      Name = "dev"
    }
   
}

terraform {
  backend "s3" {
    bucket = "meghasan123"
    key    = "mykey"
    region = "ap-south-1"
  }
}
