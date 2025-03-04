provider "aws" { 
    region = "ap-south-1"
}



resource "aws_s3_bucket" "example" {
  bucket = "megsanrav"
  
}



resource "aws_instance" "dev" {
    ami = "ami-03c68e52484d7488f"
    instance_type = "t2.micro"
    depends_on = [ aws_s3_bucket.example]
}