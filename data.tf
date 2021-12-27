data "aws_ssm_parameter" "secret" {
  count = length(var.secrets)

  name = var.secrets[count.index].ssm_param_name
}
