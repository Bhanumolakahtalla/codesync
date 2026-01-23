variable "project_name" {
  type = string
}

variable "gcp_service_account_key" {
  description = "GCP service account key JSON (from GitHub Secret)"
  type        = string
  sensitive   = true
}