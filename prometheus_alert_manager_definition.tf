resource "aws_prometheus_alert_manager_definition" "prometheus_alert_manager_definition" {
  workspace_id = aws_prometheus_workspace.prometheus_workspace.id
  definition   = <<EOF
alertmanager_config: |
  route:
    receiver: 'default'
  receivers:
    - name: 'default'
EOF
}