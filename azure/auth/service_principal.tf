resource "azuread_application" "realthered_gha_app" {
  provider = azuread.australiasoutheast

  display_name = "realthered-gha-app"

  tags = [local.tags.Project, local.tags.Owner]
}

resource "azuread_service_principal" "realthered_gha_sp" {
  provider = azuread.australiasoutheast

  client_id = azuread_application.realthered_gha_app.client_id

  tags = [local.tags.Project, local.tags.Owner]
}

resource "azuread_application_password" "realthered_gha_app_password" {
  provider = azuread.australiasoutheast

  application_id = azuread_application.realthered_gha_app.id
  display_name          = "realthered-gha-app-password"
}
