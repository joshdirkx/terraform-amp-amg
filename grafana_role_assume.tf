resource "aws_iam_role" "grafana_role_assume" {
  name = "grafana_role_assume"

  assume_role_policy = jsonencode({
    Version   = "2012-10-17"
    Statement = [
      {
        Action    = "sts:AssumeRole"
        Effect    = "Allow"
        Sid       = ""
        Principal = {
          Service = "grafana.amazonaws.com"
        }
      },
    ]
  })
}