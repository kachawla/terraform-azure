provider "azurerm" {
  features {}
  subscription_id = "<test>"
}

resource "azurerm_redis_cache" "cache" {
  name                = var.redis_cache_name
  location            = var.location
  resource_group_name = var.resource_group_name
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku_name
}

resource "azurerm_redis_cache" "cache2" {
  name                = var.redis_cache_name
  location            = var.location
  resource_group_name = var.context.resourcegroup
  capacity            = var.capacity
  family              = var.family
  sku_name            = var.sku_name
}
