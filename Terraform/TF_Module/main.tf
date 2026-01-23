resource "dbtcloud_project" "this" {
  name = var.project_name
}

locals {
  sa_key = jsondecode(var.gcp_service_account_key)
}

resource "dbtcloud_global_connection" "bigquery" {
  name = "My BigQuery connection"

  bigquery = {
    gcp_project_id              = local.sa_key.project_id
    timeout_seconds             = 1000
    private_key_id              = local.sa_key.private_key_id
    private_key                 = local.sa_key.private_key
    client_email                = local.sa_key.client_email
    client_id                   = local.sa_key.client_id
    auth_uri                    = local.sa_key.auth_uri
    token_uri                   = local.sa_key.token_uri
    auth_provider_x509_cert_url = local.sa_key.auth_provider_x509_cert_url
    client_x509_cert_url        = local.sa_key.client_x509_cert_url
  }
}

