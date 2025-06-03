variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "EKS Cluster Name"
  type        = string
  default     = "my-eks-cluster"
}

variable "node_group_desired_capacity" {
  description = "Desired number of nodes in the worker group"
  type        = number
  default     = 2
}

variable "node_group_max_size" {
  description = "Max number of nodes in worker group"
  type        = number
  default     = 3
}

variable "node_group_min_size" {
  description = "Min number of nodes in worker group"
  type        = number
  default     = 1
}
