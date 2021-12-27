output "secrets" {
  value = [
    for index, secret in var.secrets : {
      name      = var.secrets[index].env_name
      valueFrom = data.aws_ssm_parameter.secret[index].arn
    }
  ]
}
