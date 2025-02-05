resource "time_rotating" "rotation_time" {
    rotation_days = var.rotation_days
}

resource "azuread_application_password" "aad_app_password" {
    application_id     = var.application_id
    display_name       = var.display_name
    end_date           = var.end_date
    rotate_when_changed = var.rotate_when_changed
    start_date         = var.start_date
}

