resource "google_folder" "dev" {
  display_name = "Dev"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "production" {
  display_name = "Production"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "qa-test" {
  display_name = "QA_test"
  parent       = "organizations/${var.org_id}"
}

resource "google_folder" "shared" {
  display_name = "Shared"
  parent       = "organizations/${var.org_id}"
}
