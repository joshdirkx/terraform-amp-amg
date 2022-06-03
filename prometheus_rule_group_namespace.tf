resource "aws_prometheus_rule_group_namespace" "prometheus_rule_group_namespace" {
  name         = "prometheus_rule_group_namespace"
  workspace_id = aws_prometheus_workspace.prometheus_workspace.id
  data         = <<EOF
groups:
  - name: test
    rules:
    - record: metric:recording_rule
      expr: avg(rate(container_cpu_usage_seconds_total[5m]))
EOF
}