variable "secrets" {
  type        = list(object({ env_name = string, ssm_param_name = string }))
  description = "List of environment variable names and SSM Params to store secrets"
}
