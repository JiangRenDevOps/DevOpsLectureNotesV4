terraform {
  backend "s3" {
    encrypt = true
    bucket = "terraform-remote-state-storage-s3-holly"
    region = "ap-southeast-2"
    key = "./terraform.tfstate"
    profile = "default"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-state-lock-dynamodb"
  }
}
