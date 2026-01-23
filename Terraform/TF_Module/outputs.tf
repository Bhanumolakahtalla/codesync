output "project_id" {
  value = dbtcloud_project.this.id
}

output "connection_id" {
  value = dbtcloud_global_connection.bigquery.id
}

output "environments" {
  description = "Map of environment logical ids to environment ids in dbt Cloud"
  value = { for k, v in dbtcloud_environment.env : k => v.environment_id }
}
