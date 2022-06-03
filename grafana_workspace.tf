resource "aws_grafana_workspace" "grafana_workspace" {
  account_access_type      = "CURRENT_ACCOUNT"
  authentication_providers = ["AWS_SSO"]
  permission_type          = "SERVICE_MANAGED"
  role_arn                 = aws_iam_role.grafana_role_assume.arn
  data_sources             = ["PROMETHEUS"]
}