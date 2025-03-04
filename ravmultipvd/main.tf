provider "aws" {
    region = "ap-south-1"
  
}

provider "aws" {
    region = "us-east-1"
    alias = "ravsan"
  
}

resource "aws_instance" "dev" {
     ami = "ami-0d682f26195e9ec0f"
    instance_type = "t2.micro"
    key_name = "mykey"

}

resource "aws_s3_bucket" "meg" {
    
    bucket = "sanravmeg1234"
    provider = aws.ravsan
  
}