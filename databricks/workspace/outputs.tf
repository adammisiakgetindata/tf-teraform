/******************************************
  Azure databricks workspace info
*******************************************/

output "workspace_name" {
  value = azurerm_databricks_workspace.this.name
}

output "workspace_id" {
  value = azurerm_databricks_workspace.this.id
}

output "metastore_id" {
  value = data.databricks_metastore.this.metastore_id
}

