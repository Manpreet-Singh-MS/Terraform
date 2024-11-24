#S3

resource "aws_s3_bucket" "my-bucket" {
    bucket = "${var.env}redpillhq"
    tags = {
      Name = "${var.env}redpillhq"
      enviroment = var.env
    }  
}