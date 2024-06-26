module "lambda-at-edge" {
  source  = "transcend-io/lambda-at-edge/aws"
  version = "0.0.2"

  name        = var.name
  description = var.description
  runtime     = "nodejs18.x"

  lambda_code_source_dir = "${path.module}/../src"
  file_globs = [
    "index.js",
    "handle*.js",
    "utils/*.js",
    "node_modules/**",
    "yarn.lock",
    "package.json",
  ]

  plaintext_params = {
    userpool_id              = var.userpool_id
    client_id                = var.client_id
    userpool_region          = var.userpool_region
    ui_domain                = var.ui_domain
    is_custom_ui_domain      = var.is_custom_ui_domain
    scopes                   = join(" ", var.scopes)
    client_secret_param_name = var.ssm_client_secret_param_name
  }

  ssm_params = {
    (var.ssm_client_secret_param_name) = var.client_secret
  }
}
