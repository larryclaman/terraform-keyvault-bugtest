variable "project_name" {
  type        = string
  description = "Globally used project name"
  default     = "lnctest"
}

variable "region" {
  type        = string
  description = "Azure Region that will be used"
  default     = "EastUS"
}

variable "cluster_version" {
  type        = string
  description = "The Kubernetes version for our clusters"
  default     = "1.19.9"
}

variable "key_vault_identifier" {
  type        = string
  description = "Azure Key Vault Identifier"
  default     = "vault"
}

variable "vault_client_id" {
  type        = string
  description = "Vault Service Principal Client ID"
  default     = ""
  sensitive   = true
}

variable "vault_client_secret" {
  type        = string
  description = "Vault Service Principal Secret"
  default     = ""
  sensitive   = true
}


variable "rg_name" {
  type = string
  # should be overridden in Terraform Cloud workspace or on command line
  default = "terraformEXPProd"
}