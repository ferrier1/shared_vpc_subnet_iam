module "subnet-00" {
  source             = "../"
  subnet             = "subnet-00"
  host_project       = "host-project-id"
  service_projects   = [
    "service-project-1",
    "service-project-2"
  ]
  subnet_members     = [
    "serviceAccount:terraform-admin@service-project-1.iam.gserviceaccount.com",
    "serviceAccount:terraform-admin@service-project-2.iam.gserviceaccount.com"
  ]
}
