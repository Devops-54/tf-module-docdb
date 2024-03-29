# Terraform Renote State Datasource : This is going to read the data from another statefile

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "dev54-tf-remote-state"
    key    = "vpc/${var.ENV}/terraform.tfstate"
    region = "us-east-1"
  }
}