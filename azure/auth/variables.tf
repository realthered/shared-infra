# Injected from env var TF_VAR_subscription_id
variable "subscription_id" {
  description = "The Subscription ID where the resources will be created."
  type        = string
  sensitive  = true
}
