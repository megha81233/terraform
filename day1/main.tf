resource "aws_instance" "name" {
    ami="ami-03c68e52484d7488f"
    instance_type = "t2.micro"
    key_name = "mykey"
  
}