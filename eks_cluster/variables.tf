variable "eks_cluster_name" {
  type = string
  default = "zenjob_cluster"
}

variable "vpc_id" {
  type = string
  default = "vpc-1234556abcdef"
}

variable "subnet_id" {
  type    = list
  default = ["subnet-abcde012", "subnet-bcde012a", "subnet-fghi345a"]
}
