locals {
  databricks_workspace_name = "${var.prefix}-${var.databricks_workspace_name}"
  tenant_id                 = data.azurerm_client_config.current.tenant_id
  databricks_workspace_host = azurerm_databricks_workspace.this.workspace_url
  databricks_workspace_id   = azurerm_databricks_workspace.this.workspace_id
  prefix                    = var.prefix
}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
    databricks = {
      source = "databricks/databricks"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.30.0"
    }
  }
}

module "label_folder_name" {
  source  = "cloudposse/label/null"
  version = "0.25.0" # requires Terraform >= 0.13.0

  context = module.this.context

  label_value_case    = "none"
  regex_replace_chars = "/[^a-zA-Z0-9- ]/"
}
