resource "random_id" "rand_id" {
    byte_length = 3
  
}
resource "aws_s3_bucket" "demo_bucket" {
    bucket = "radiant-${terraform.workspace}-${random_id.rand_id.hex}"  
}