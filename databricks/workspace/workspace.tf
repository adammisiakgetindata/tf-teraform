
resource "azurerm_databricks_workspace" "this" {
  name                = "${var.prefix}-${var.databricks_workspace_name}"
  resource_group_name = var.resource_group
  location            = var.region
  sku                 = var.workspace_type
}

resource "databricks_metastore_assignment" "this" {
  workspace_id         = azurerm_databricks_workspace.this.workspace_id
  metastore_id         = var.databricks_metastore_id
  default_catalog_name = "hive_metastore"
}