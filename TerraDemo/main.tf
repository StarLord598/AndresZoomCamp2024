terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.37.0"
    }
  }
}

provider "google" {
  project = "triple-shadow-428819-i0"
  region  = "us-west2-b"
}