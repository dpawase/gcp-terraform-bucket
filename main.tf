provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "my_bucket" {
  name          = var.bucket_name
  location      = var.region
  force_destroy = true  # allows deleting even if not empty

  uniform_bucket_level_access = true
}

