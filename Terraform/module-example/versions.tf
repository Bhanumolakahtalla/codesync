terraform {
  required_version = "1.5.7"
  required_providers {
    dbtcloud = {
      source  = "dbt-labs/dbtcloud"
      version = "1.5.1"
    }
    google = {
      source  = "hashicorp/google"
      version = ">= 5.0"
    }
  }
}

