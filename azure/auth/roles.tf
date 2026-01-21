resource "azurerm_role_assignment" "realthered_gha_cicd_role" {
  provider = azurerm.australiasoutheast

  scope                = "/subscriptions/${var.subscription_id}"
  role_definition_name = "Contributor"
  principal_id         = azuread_service_principal.realthered_gha_sp.object_id
}
