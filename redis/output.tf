output "host" {
  value = azurerm_redis_cache.cache.hostname
}

output "port" {
  value = azurerm_redis_cache.cache.ssl_port
}

output "password" {
  value = azurerm_redis_cache.cache.primary_access_key
  sensitive = true
}