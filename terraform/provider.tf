# provider.tf

provider "aws" {
  shared_credentials_file = "$HOME/.aws/credentials"
  region                  = var.aws_region
  profile                 = "default"   # Update with your profile
}

