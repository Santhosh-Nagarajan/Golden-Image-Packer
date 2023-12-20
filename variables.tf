variable "project-id" {
  type        = string
  description = "Enter Your Project Id"
}

variable "region" {
  type        = string
  description = "Enter Your Region"
}

variable "zone" {
  type        = string
  description = "Enter Your zone"
}

variable "credential" {
  type        = string
  description = "Enter your JSON file"
}

variable "instance-name" {
  type        = string
  description = "Enter Your Instance Name"
}

variable "machine-type" {
  type        = string
  description = "Enter Your Instance Machine Type"
}


variable "size" {
  type        = string
  description = "Enter Your Size"
}

variable "image-name" {
  type        = string
  description = "Enter Your Image Name"
}

variable "startup-script" {
  type        = string
  description = "Enter your test script file"
}

variable "email" {
  type        = string
  description = "Enter Your email"
}

variable "port" {
  type        = list(string)
  description = "Enter Your Ports"
}

variable "http-source-range" {
  type        = list(string)
  description = "Enter Your Http Source Range"
}

variable "ssh-source-range" {
  type        = list(string)
  description = "Enter Your SSH Source Range"
}
