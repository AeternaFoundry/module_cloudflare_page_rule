output "page_rules_id" {
  description = "Map of id values across all page_rules, keyed the same as var.page_rules except keys with no id are omitted"
  value       = { for k, v in cloudflare_page_rule.page_rules : k => v.id if v.id != null && length(v.id) > 0 }
}
output "page_rules_actions" {
  description = "Map of actions values across all page_rules, keyed the same as var.page_rules except keys with no actions are omitted"
  value       = { for k, v in cloudflare_page_rule.page_rules : k => v.actions if v.actions != null && length(v.actions) > 0 }
}
output "page_rules_created_on" {
  description = "Map of created_on values across all page_rules, keyed the same as var.page_rules except keys with no created_on are omitted"
  value       = { for k, v in cloudflare_page_rule.page_rules : k => v.created_on if v.created_on != null && length(v.created_on) > 0 }
}
output "page_rules_modified_on" {
  description = "Map of modified_on values across all page_rules, keyed the same as var.page_rules except keys with no modified_on are omitted"
  value       = { for k, v in cloudflare_page_rule.page_rules : k => v.modified_on if v.modified_on != null && length(v.modified_on) > 0 }
}
output "page_rules_priority" {
  description = "Map of priority values across all page_rules, keyed the same as var.page_rules except keys with no priority are omitted"
  value       = { for k, v in cloudflare_page_rule.page_rules : k => v.priority if v.priority != null }
}
output "page_rules_status" {
  description = "Map of status values across all page_rules, keyed the same as var.page_rules except keys with no status are omitted"
  value       = { for k, v in cloudflare_page_rule.page_rules : k => v.status if v.status != null && length(v.status) > 0 }
}
output "page_rules_target" {
  description = "Map of target values across all page_rules, keyed the same as var.page_rules except keys with no target are omitted"
  value       = { for k, v in cloudflare_page_rule.page_rules : k => v.target if v.target != null && length(v.target) > 0 }
}
output "page_rules_zone_id" {
  description = "Map of zone_id values across all page_rules, keyed the same as var.page_rules except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_page_rule.page_rules : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

