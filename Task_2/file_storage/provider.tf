terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.85.0"
    }
  }
}

provider "google" {
  project = "terraform-379807"
  region = "us-central1"
  zone = "us-central1-a"
}