module "network" {
  source  = "app.terraform.io/vlica-training/network/google"
  version = "2.5.0"
  # insert required variables here
  network_name = "guarav-network"
  project_id   = var.project
  subnets = [
    {
      subnet_name   = "guarav-subnet"
      subnet_ip     = "10.100.10.0/24"
      subnet_region = var.region
    }
  ]
}