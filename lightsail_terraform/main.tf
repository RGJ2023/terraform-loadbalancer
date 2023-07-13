# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
#creating the lightsail instance
resource "aws_lightsail_instance" "lightsail_instance" {
  name          = "Rita_devOps"
  availability_zone = "us-east-1a"
  blueprint_id  = "ubuntu_20_04"
  bundle_id     = "nano_1_0"
  tags = {
    name = "rita-practice"
    env  = "dev"
  }
}
resource "aws_iam_user" "demo-user" {
  name = "Gabby"
}