resource "aws_s3_bucket" "mybucket" {
    bucket = "samplepsibucket"
    tags = {
        name = "samplepsibucket"
    }  
  
}