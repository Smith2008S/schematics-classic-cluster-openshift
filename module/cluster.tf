#provider "ibm" {
#  generation = 2
#}

#resource "ibm_is_vpc" "vpc1" {
#  name = "myvpc"
#}


##############################################################################
# Create Cluster
##############################################################################
 
resource "ibm_container_cluster" "cluster" {
  name              = "${var.cluster_name}${random_id.name.hex}"
  datacenter        = var.datacenter
  vpc_id            = ibm_is_vpc.vpc1.id
  default_pool_size = var.default_pool_size
  machine_type      = var.machine_type
  hardware          = var.hardware
  kube_version      = var.kube_version
  #public_vlan_id    = var.public_vlan_id
  #private_vlan_id   = var.private_vlan_id
}

data "ibm_container_cluster_config" "cluster_config" {
  cluster_name_id = ibm_container_cluster.cluster.id
}

resource "random_id" "name" {
  byte_length = 4
}
