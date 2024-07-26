variable "credentials" {
  description = "My Credentials"
  default     = "/workspaces/AndresZoomCamp2024/Week_1_Docker_SQL_GCP_Terraform/Homework_1/terraform_aca_version/terraform_with_variables/keys/my-creds.json"
}

variable "project" {
  description = "Project Name"
  default     = "ny-rides-andres"
}

variable "region" {
  description = "Project Region"
  default     = "us-central1-c"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My GCS Bucket Name"
  default     = "ny-rides-andres-terra-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}