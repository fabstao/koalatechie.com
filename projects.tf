module "kp-containers-dev" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 12.0"

  name       = "containers-dev"
  project_id = "kp-containers-dev"
  org_id     = var.org_id
  folder_id  = google_folder.dev.name

  billing_account = var.billing_account
}

module "kp-shared-storage" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 12.0"

  name       = "shared-storage"
  project_id = "kp-shared-storage"
  org_id     = var.org_id
  folder_id  = google_folder.shared.name

  billing_account = var.billing_account
}

module "kp-shared-vms" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 12.0"

  name       = "shared-vms"
  project_id = "kp-shared-vms"
  org_id     = var.org_id
  folder_id  = google_folder.shared.name

  billing_account = var.billing_account
}

module "kp-vms-dev" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 12.0"

  name       = "vms-dev"
  project_id = "kp-vms-dev"
  org_id     = var.org_id
  folder_id  = google_folder.dev.name

  billing_account = var.billing_account
}

module "kp-vmware-test" {
  source  = "terraform-google-modules/project-factory/google"
  version = "~> 12.0"

  name       = "vmware-test"
  project_id = "kp-vmware-test"
  org_id     = var.org_id
  folder_id  = google_folder.qa-test.name

  billing_account = var.billing_account
}
