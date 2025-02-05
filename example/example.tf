resource "azuread_application_registration" "appp-reg" {
  display_name = "test-app-registration"
}

module "azuread_application_password" {
    source = "../"
    application_id     = azuread_application_registration.appp-reg.id
    display_name       = var.display_name
    end_date           = var.end_date
    rotate_when_changed = var.rotate_when_changed
    start_date         = var.start_date
    rotation_days      = var.rotation_days
  }
