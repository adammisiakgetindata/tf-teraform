
variable "resource_group" {
  description = "The Azure resource group for the databricks workspace deployment."
}
variable "databricks_workspace_name" {
  description = "The Azure databricks workspace name."
  default     = ""
}
variable "prefix" {
  description = "The prefix added to the all resources name."
}
variable "region" {
  description = "The Azure region the databricks workspace deployment."
  default     = "West Europe"
}
variable "workspace_type" {
  description = "The databricks workspace type."
  default     = "premium"
}
variable "databricks_metastore_id" {
  description = "The databricks metastore id."
}
