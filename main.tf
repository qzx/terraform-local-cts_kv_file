resource "local_file" "key-value-pairs" {
  for_each = var.consul_kv
  content  = each.value
  filename = "resources/${each.key}.txt"
}
