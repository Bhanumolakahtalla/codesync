variable "dbt_cloud_token" {}
variable "dbt_cloud_account_id" {}

variable "dbt_host_url" {
	description = "(optional) dbt Cloud API host URL"
	type        = string
	default     = "https://pi849.us1.dbt.com/api"
}

variable "gcp_project_id" {
	description = "GCP project id used by the Google provider and passed into the module"
	type        = string
}

variable "project_name" {
	type = string
}

variable "gcp_service_account_key" {
  type        = string
  description = "GCP service account key"
  sensitive   = true
}

variable "dbt_cloud_token" {
  type        = string
  description = "DBT_CLOUD_TOKEN"
  sensitive   = true
}
