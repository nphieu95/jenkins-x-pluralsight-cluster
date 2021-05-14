module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.10.1"
  gcp_project = "pluralsight-jenkins-x-course-1"
  cluster_name = "ps-jx-cluster"
}

terraform {
  backend "gcs" {
    bucket = "ps-jx-terraform-state-files-a"
    prefix = "terraform/state"
  }
}