resource "aws_instance" "dependent" {
    ami = "ami-03c68e52484d7488f"
    instance_type = "t2.micro"
    key_name = "mykey"
}

resource "aws_s3_bucket" "dependent" {
    bucket = "ytvhshfbbcerrr" 
}
