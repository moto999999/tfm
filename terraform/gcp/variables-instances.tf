variable "machine_type" {
  type    = string
  default = "e2-standard-2"
}

variable "disk_type" {
  type = map(any)
  default = {
    balanced = "pd-standard"
    ssd      = "pd-ssd"
  }
}

variable "disk_size_gb" {
  type = map(any)
  default = {
    control_plane = "50"
    worker        = "50"
    bastion       = "25"
    nfs           = "100"
  }
}

variable "image" {
  type  = string
  default = "rocky-linux-9-optimized-gcp-v20221102" # https://stackoverflow.com/questions/62638916/how-to-provide-image-name-in-gcp-terraform-script
}

variable "ssh_user" {
  type  = string
  default = "admin"
}

variable "ssh_pub_key_file" {
  type  = string
  default = "../../ssh_key/admin.pub"
}

variable "number_control_planes" {
  type = number
  default = 3
}

variable "number_workers" {
  type = number
  default = 2
}