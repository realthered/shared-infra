resource "azuread_application_federated_identity_credential" "realthered_gha_oidc_shared_infra" {
  provider = azuread.australiasoutheast

  application_id = azuread_application.realthered_gha_app.id
  display_name   = "github-oidc-shared-infra"
  description    = "GitHub OIDC for realthered/shared-infra"

  audiences = ["api://AzureADTokenExchange"]
  issuer    = "https://token.actions.githubusercontent.com"
  subject   = "repo:realthered/shared-infra:ref:refs/heads/main"
}

resource "azuread_application_federated_identity_credential" "realthered_gha_oidc_portfolio" {
  provider = azuread.australiasoutheast

  application_id = azuread_application.realthered_gha_app.id
  display_name   = "github-oidc-portfolio"
  description    = "GitHub OIDC for realthered/portfolio"

  audiences = ["api://AzureADTokenExchange"]
  issuer    = "https://token.actions.githubusercontent.com"
  subject   = "repo:realthered/portfolio:ref:refs/heads/main"
}
