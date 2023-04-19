### terraform remote state backend ###

data "terraform_remote_state" "vpc" {
  backend = "remote"

  config = {
    hostname = "app.terraform.io"
    organization = "kunaltech"
    workspaces = {
      name = "terraform-cloud-vpc-networking"
    }
  }
}
