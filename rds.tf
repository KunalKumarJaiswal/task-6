provider "aws" {
        region = "ap-south-1"
        profile = "kunal1"
   }

resource "aws_db_instance" "default" {
	allocated_storage = 10
	storage_type = "gp2"
	identifier = "sqldb"
	engine = "mysql"
      	engine_version = "5.7"
	instance_class = "db.t2.micro"
	name = "RDS"
	username = "kunal"
	password = "kkjaiswal"
	publicly_accessible = true
	port = 3306
	parameter_group_name = "default.mysql5.7"
	skip_final_snapshot = true
	tags = {
 	    Name = "database"
	     }
  }

output "dns" {
  value = aws_db_instance.default.address
}