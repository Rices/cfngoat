resource "aws_s3_bucket" "cloud-compliance-bucket" {  
    bucket = "cloud-compliance bucket-4sdf3sf3z-663475435" 
    versioning { 
        enabled = true 
        } 
        tags = { 
            Name = "cloud-compliance bucket" 
            Owner = "payments" 
            } 
}

resource "aws_db_instance" "test_rds_instance" {
	# checkov:skip=CKV_AWS_16: ADD REASON
    allocated_storage = 10
    engine = "mysql"
    engine_version = "5.7"
    instance_class = "db.t3.micro"
    identifier = "testrdsinstance"
    name = "mytestdb"
    username = "foo"
    password = "foobarbaz"
    parameter_group_name = "default.mysql5.7"
    skip_final_snapshot = true
    enabled_cloudwatch_logs_exports = ["general"]
    tags = {
        Name = "test_rds_instance"
        Owner = "banking"
        } 
}
