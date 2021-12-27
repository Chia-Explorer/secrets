# Secrets

This Terraform module takes a list of environment variable names associated with SSM parameters.

The parameters must already exist after having been created elsewhere.

The purpose of all of this is to get the generated output which contains the environment variable name along with the ARN of the associated parameter. The output secrets are in a format that is ready to be passed directly into a container definition in ECS Fargate.

No secret values are stored in Terraform state by this module.

## Example usage

```
module "secrets" {
  source = "git::https://github.com/Chia-Explorer/secrets?ref=1.0.0"

  secrets = [{
    env_name = "USERNAME"
    ssm_param_name = "/chia/app/username"
  }, {
    env_name = "PASSWORD"
    ssm_param_name = "/chia/app/password"
  }, {
    env_name = "PRIVATE_KEY"
    ssm_param_name = "/chia/app/private_key"
  }]
}
```
