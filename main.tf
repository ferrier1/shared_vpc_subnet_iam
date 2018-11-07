resource "google_compute_shared_vpc_service_project" "service-project-attachment" {
  count  = "${length(compact(var.service_projects)) > 0 ? length(var.service_projects) : 0 }"


  host_project    = "${var.host_project}"
  service_project = "${var.service_projects[count.index]}"
}



resource "google_compute_subnetwork_iam_member" "shared-vpc-subnet-iam-binding" {
  count = "${length(compact(var.subnet_members)) > 0 ? length(var.subnet_members) : 0 }"



  subnetwork = "${var.subnet}"
  role       = "roles/compute.networkUser"
  member     = "${var.subnet_members[count.index]}"

}
