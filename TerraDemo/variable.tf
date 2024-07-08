variable "credentials" {
    description = "My Credentials"
    default = "/workspaces/AndresZoomCamp2024/TerraDemo/keys/my-creds.json"
}

variable "project" {
    description = "Project Name"
    default = "triple-shadow-428819-i0"
}

variable "region" {
    description = "Project Region"
    default = "us-west2-b"
}

variable "location" {
    description = "Project Location"
    default = "US"
}

variable "bq_dataset_name" {
    description = "My BigQuery Dataset Name"
    default = "demo_dataset"
}

variable "gcs_bucket_name" {
    description = "My GCS Bucket Name"
    default = "triple-shadow-428819-i0-terra-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default = "STANDARD"
}