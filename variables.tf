variable "elasticsearch_ingest_processor_circle_lookup" {
  description = <<EOT
Map of elasticsearch_ingest_processor_circle_lookup, attributes below
Required:
    - error_distance
    - field
    - shape_type
Optional:
    - description
    - if
    - ignore_failure
    - ignore_missing
    - on_failure
    - tag
    - target_field
EOT

  type = map(object({
    error_distance = number
    field          = string
    shape_type     = string
    description    = optional(string)
    if             = optional(string)
    ignore_failure = optional(bool)
    ignore_missing = optional(bool)
    on_failure     = optional(list(string))
    tag            = optional(string)
    target_field   = optional(string)
  }))
}

