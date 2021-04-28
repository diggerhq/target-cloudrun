
provider "google" {
  project     = "totemic-beaker-312109"
  region      = var.region
  credentials = file(var.credentials_file_path)
}


