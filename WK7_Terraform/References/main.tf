module "myApp" {
  source = "./staging/services/backend_app"
  app_version = var.app_version
}

provider "aws" {
  region                  = "ap-southeast-2"
  shared_credentials_file = "/Users/holly/.aws/credentials"
  profile                 = "default"
}
