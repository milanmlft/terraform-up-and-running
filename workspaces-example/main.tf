# Experimenting with Terraform workspaces
terraform {
  backend "s3" {
    bucket = "2023-06-29-terraform-up-and-running-state"
    key = "workspaces-example/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt = true
  }
}

# Simple EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0fb653ca2d3203ac1"
  instance_type = "t2.micro"
}
