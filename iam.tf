module "organization-iam" {
  source  = "terraform-google-modules/iam/google//modules/organizations_iam"
  version = "~> 7.4"

  organizations = ["272327660835"]

  bindings = {

    "roles/billing.admin" = [
      "group:koala-gcp-billing-admins@koalatechie.com",
    ]

    "roles/resourcemanager.folderViewer" = [
      "group:koala-gcp-devops@koalatechie.com",
    ]

    "roles/resourcemanager.organizationAdmin" = [
      "group:koala-gcp-admins@koalatechie.com",
    ]

  }
}


module "dev-iam" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [google_folder.dev.name]

  bindings = {

    "roles/compute.admin" = [
      "group:koala-gcp-devs@koalatechie.com",
    ]

    "roles/container.admin" = [
      "group:koala-gcp-devs@koalatechie.com",
    ]

  }
}


module "production-iam" {
  source  = "terraform-google-modules/iam/google//modules/folders_iam"
  version = "~> 7.4"

  folders = [google_folder.production.name]

  bindings = {

    "roles/compute.admin" = [
      "group:koala-gcp-devops@koalatechie.com",
    ]

    "roles/container.admin" = [
      "group:koala-gcp-devops@koalatechie.com",
    ]

    "roles/errorreporting.admin" = [
      "group:koala-gcp-devops@koalatechie.com",
    ]

    "roles/logging.admin" = [
      "group:koala-gcp-devops@koalatechie.com",
    ]

    "roles/monitoring.admin" = [
      "group:koala-gcp-devops@koalatechie.com",
    ]

    "roles/servicemanagement.quotaAdmin" = [
      "group:koala-gcp-devops@koalatechie.com",
    ]

  }
}
