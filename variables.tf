variable "resource_group_name" {
  type        = string
  description = "Name of the azure resource group."
}

variable "location" {
  type        = string
  description = "Cosmos DB deployment region. Can be different from resource group location"
  default     = ""
}

variable "cosmos_account_name" {
  type        = string
  description = "Name of the Cosmos DB account."
  default     = ""
}

variable "cosmos_api" {
  type        = string
  description = ""
  validation {
    condition     = contains(["MongoDB"], lower(var.cosmos_api))
    error_message = "Unsupported cosmos api specified. Supported APIs include MongoDB."
  }
}

variable "auto_failover" {
  type        = bool
  description = "Enable automatic fail over for this Cosmos DB account - can be either true or false"
  default     = false
}

variable "geo_location" {
    type        = string
  description = "Geo location to create secodanry databases."
  
  default = [
    {
      geo_location      = "eastus"
    },
  ]
}