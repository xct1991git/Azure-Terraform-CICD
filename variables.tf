variable "location" {
  description = "Región de Azure donde se desplegarán los recursos"
  type        = string
  default     = "northeurope"
}

variable "environment" {
  description = "Entorno de despliegue"
  type        = string
  default     = "lab"
}

variable "vnet_address_space" {
  description = "Espacio de direcciones CIDR para la VNet"
  type        = list(string)
  default     = ["10.10.0.0/16"]
}

variable "subnet_frontend_prefix" {
  description = "Prefijo CIDR para la subred Frontend"
  type        = list(string)
  default     = ["10.10.1.0/24"]
}

variable "subnet_backend_prefix" {
  description = "Prefijo CIDR para la subred Backend"
  type        = list(string)
  default     = ["10.10.2.0/24"]
}
