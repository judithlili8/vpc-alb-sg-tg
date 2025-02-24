terraform {
  backend "s3" {
    bucket = "w6-je-bucket-terraform"
    key = "w10-je-bucket-terraform"
    dynamodb_table = "terraform-lock"
    region = "us-east-1"
    encrypt = true
    
  }
}