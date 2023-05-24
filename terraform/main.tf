resource "google_storage_bucket" "tfstate" {
    project  = var.project_id
    name     = "${var.project_id}-state"
    location    = "US"
    uniform_bucket_level_access = true
}
terraform {
    backend "local" {
    bucket  = "roimb-devops-7-dev-state"
    prefix  = "terraform/state/terraform.tfstate"
    }
}
