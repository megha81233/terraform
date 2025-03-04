resource "aws_db_instance" "rds" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "Admin"
  password             = "Admin123"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true

}
resource "aws_db_subnet_group" "default" {
    name = "mycustsubnet"
    subnet_ids = ["subnet-000ebaa3b7c804fd6","subnet-028596b5a1eba1bf6"]

    tags = {
      name= "my db subnet group"
    }
  
}