variable "resource_group_name" {
  type        = string
  description = "Name of the Azure resource group."
}

variable "location" {
  type        = string
  description = "Redis cache deployment region. Can be different from resource group location."
}

variable "redis_cache_name" {
  type        = string
  description = "Name of the Redis Cache."
}

variable "capacity" {
  type = int
  description = "Size of the Redis Cache to deploy. Valid values: for C (Basic/Standard) family (0, 1, 2, 3, 4, 5, 6), for P (Premium) family (1, 2, 3, 4)."
  default = 0
}

variable "family" {
  type        = string
  description = "The SKU family to use. Valid values: (C, P). (C = Basic/Standard, P = Premium)."
  default = "C"
}

variable "sku_name" {
  type        = string
  description = "The type of Redis cache to deploy. Valid values: (Basic, Standard, Premium)"
  default     = "Basic"
}