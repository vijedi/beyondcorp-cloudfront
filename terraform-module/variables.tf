variable name {
  description = "The name of the lambda@edge function"
  default     = "cognito_auth"
}

variable description {
  description = "The description of the lambda@edge function"
  default     = "Enforces JWT authentication through AWS Cognito"
}

variable userpool_id {
  description = "The ID of the Cognito User Pool to validate JWTs with"
}

variable client_id {
  description = "THe ID of the Cognito User Pool App Client to validate JWTs with"
}

variable client_secret {
  description = "The Client Secret of the Cognito User Pool App Client to validate JWTs with"
}

variable userpool_region {
  description = "The region of the Cognito User Pool"
  default     = "eu-west-1"
}

variable ui_domain {
  description = "The (sub)domain used for the Amazon Cognito user pool UI"
}

variable is_custom_ui_domain {
  description = "Is this a custom UI domain instead of a cognito subdomain"
  default     = true
}

variable scopes {
  type        = list(string)
  description = "The scopes to attempt to log in with"
}

variable ssm_client_secret_param_name {
  description = "The name of the SSM param for the client secret"
  default = "COGNITO_CLIENT_SECRET"
}
