variable "page_rules" {
  description = <<EOT
Map of page_rules, attributes below
Required:
    - actions
    - target
    - zone_id
Optional:
    - priority
    - status
EOT

  type = map(object({
    actions = object({
      always_use_https         = optional(bool)
      automatic_https_rewrites = optional(string)
      browser_cache_ttl        = optional(number)
      browser_check            = optional(string)
      bypass_cache_on_cookie   = optional(string)
      cache_by_device_type     = optional(string)
      cache_deception_armor    = optional(string)
      cache_key_fields = optional(object({
        cookie = optional(object({
          check_presence = optional(list(string))
          include        = optional(list(string))
        }))
        header = optional(object({
          check_presence = optional(list(string))
          exclude        = optional(list(string))
          include        = optional(list(string))
        }))
        host = optional(object({
          resolved = optional(bool)
        }))
        query_string = optional(object({
          exclude = optional(list(string))
          include = optional(list(string))
        }))
        user = optional(object({
          device_type = optional(bool)
          geo         = optional(bool)
          lang        = optional(bool)
        }))
      }))
      cache_level            = optional(string)
      cache_on_cookie        = optional(string)
      cache_ttl_by_status    = optional(map(string))
      disable_apps           = optional(bool)
      disable_performance    = optional(bool)
      disable_security       = optional(bool)
      disable_zaraz          = optional(bool)
      edge_cache_ttl         = optional(number)
      email_obfuscation      = optional(string)
      explicit_cache_control = optional(string)
      forwarding_url = optional(object({
        status_code = number
        url         = string
      }))
      host_header_override        = optional(string)
      ip_geolocation              = optional(string)
      mirage                      = optional(string)
      opportunistic_encryption    = optional(string)
      origin_error_page_pass_thru = optional(string)
      polish                      = optional(string)
      resolve_override            = optional(string)
      respect_strong_etag         = optional(string)
      response_buffering          = optional(string)
      rocket_loader               = optional(string)
      security_level              = optional(string)
      sort_query_string_for_cache = optional(string)
      ssl                         = optional(string)
      true_client_ip_header       = optional(string)
      waf                         = optional(string)
    })
    target   = string
    zone_id  = string
    priority = optional(number)
    status   = optional(string)
  }))
}

