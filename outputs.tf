output "streams_lookup_id" {
  description = "Map of id values across all streams_lookup, keyed the same as var.streams_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_streams.streams_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "streams_lookup_in" {
  description = "Map of in values across all streams_lookup, keyed the same as var.streams_lookup except keys with no in are omitted"
  value       = { for k, v in data.snowflake_streams.streams_lookup : k => one(v.in) if v.in != null && length(v.in) > 0 }
}
output "streams_lookup_like" {
  description = "Map of like values across all streams_lookup, keyed the same as var.streams_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_streams.streams_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "streams_lookup_limit" {
  description = "Map of limit values across all streams_lookup, keyed the same as var.streams_lookup except keys with no limit are omitted"
  value       = { for k, v in data.snowflake_streams.streams_lookup : k => one(v.limit) if v.limit != null && length(v.limit) > 0 }
}
output "streams_lookup_starts_with" {
  description = "Map of starts_with values across all streams_lookup, keyed the same as var.streams_lookup except keys with no starts_with are omitted"
  value       = { for k, v in data.snowflake_streams.streams_lookup : k => v.starts_with if v.starts_with != null && length(v.starts_with) > 0 }
}
output "streams_lookup_streams" {
  description = "Map of streams values across all streams_lookup, keyed the same as var.streams_lookup except keys with no streams are omitted"
  value       = { for k, v in data.snowflake_streams.streams_lookup : k => v.streams if v.streams != null && length(v.streams) > 0 }
}
output "streams_lookup_with_describe" {
  description = "Map of with_describe values across all streams_lookup, keyed the same as var.streams_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_streams.streams_lookup : k => v.with_describe if v.with_describe != null }
}

