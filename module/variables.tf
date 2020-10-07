##############################################################################
# Cluster Variables
##############################################################################

variable "ibmcloud_api_key" {}

variable "machine_type" {
   default = "b2c.4x16"
}

variable "hardware" {
   default = "shared"
}

variable "datacenter" {
  default = "dal10"
}

variable "default_pool_size" {
  default = "1"
}

variable "cluster_name" {
  default = "classic-cluster"
}

#variable "private_vlan_id" {}

#variable "public_vlan_id" {}


variable kube_version {
  default = "4.3_openshift"
}
 


##############################################################################
