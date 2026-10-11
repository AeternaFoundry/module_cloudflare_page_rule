resource "cloudflare_page_rule" "page_rules" {
  for_each = var.page_rules

  actions  = each.value.actions
  target   = each.value.target
  zone_id  = each.value.zone_id
  priority = each.value.priority
  status   = each.value.status
}

