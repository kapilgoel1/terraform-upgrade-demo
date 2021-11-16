terraform {
  backend "remote" {
    hostname      = "app.terraform.io"
    organization  = "company-kapil"

    workspaces {
      name = "terraform-upgrade-demo"
    }
  }
}
