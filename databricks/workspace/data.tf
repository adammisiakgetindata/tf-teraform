data "azurerm_resource_group" "this" {
  name = var.resource_group
}

data "azurerm_client_config" "current" {
}

data "databricks_metastore" "this" {
  metastore_id = var.databricks_metastore_id
}

