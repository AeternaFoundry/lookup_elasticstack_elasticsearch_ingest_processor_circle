data "elasticstack_elasticsearch_ingest_processor_circle" "elasticsearch_ingest_processor_circle_lookup" {
  for_each = var.elasticsearch_ingest_processor_circle_lookup

  error_distance = each.value.error_distance
  field          = each.value.field
  shape_type     = each.value.shape_type
  description    = each.value.description
  if             = each.value.if
  ignore_failure = each.value.ignore_failure
  ignore_missing = each.value.ignore_missing
  on_failure     = each.value.on_failure
  tag            = each.value.tag
  target_field   = each.value.target_field
}

