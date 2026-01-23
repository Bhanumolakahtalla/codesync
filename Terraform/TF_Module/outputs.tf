output "project_id" {
  value = dbtcloud_project.this.id
}

output "connection_id" {
  value = dbtcloud_global_connection.bigquery.id
}
