##############################################################################
# Sensitive Account Variables
##############################################################################

variable resource_group_id {
    description = "Name of resource group to provision resources"
}

##############################################################################



##############################################################################
# Network Variables
##############################################################################

variable public_vlan_ids {
  description = "List of public vlans. The first will be for the master, any additional will be for worker pools"
  type        = "string"

}

variable private_vlan_ids {
  description = "List of private vlans The first will be for the master, any additional will be for worker pools"
  type        = "string"
}


variable zones {
  description = "List of cluster zones The first will be for the master, any additional will be for worker pools"
  type        = "string"

}

##############################################################################


##############################################################################
# Cluster Variables
##############################################################################

variable cluster_name {
  description = "Name of openshift cluster to be created"
  default     = "classic-cluster"
}

variable kube_version {
  description = "Kube version to use for the cluster. use `ibmcloud ks versions` to see a list of available versions"
  default     = "4.4.20_openshift"
}

variable default_pool_size {
  description = "Default pool size for cluster"
  default     = 1  
}

variable hardware {
  description = "Hardware type for cluster, shared or dedicated"
  default     = "shared"
}

variable machine_type {
  description = "hardware type for cluster"
  default     = "b3c.4x16"
}

variable private_only {
  description = "Provision cluster workers on private only"
  default     = false
}

##############################################################################
