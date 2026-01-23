provider "dbtcloud" {
  token      = var.dbt_cloud_token
  account_id = var.dbt_cloud_account_id
  host_url   = var.dbt_host_url
}


provider "google" {
  project = var.gcp_project_id
}


module "dbt_cloud" {
  source = "../TF_Module"

  project_name           = var.project_name
  gcp_service_account_key = var.gcp_service_account_key
  DBT_CLOUD_TOKEN = var.DBT_CLOUD_TOKEN

}


