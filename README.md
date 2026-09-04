# Despliegue de Infraestructura en Azure con Terraform y CI/CD en GitHub Actions

Proyecto de automatización de infraestructura en Microsoft Azure siguiendo estándares de nivel empresarial mediante Infraestructura como Código (IaC), gestión de estado remoto y pipelines de integración y entrega continua (CI/CD).

---

## Arquitectura del Entorno

* **Proveedor Cloud:** Microsoft Azure
* **Región:** Norte de Europa (`northeurope`)
* **Componentes Principales:**
  * **Resource Group:** `rg-core-networking-lab`
  * **Virtual Network (VNet):** `vnet-hub-lab` (`10.10.0.0/16`)
  * **Subred Frontend:** `snet-frontend` (`10.10.1.0/24`) con Network Security Group asociado (tráfico entrante HTTPS/443 permitido)
  * **Subred Backend:** `snet-backend` (`10.10.2.0/24`)
* **Gestión de Estado Remoto:** Azure Blob Storage (`azurerm` backend con bloqueo de estado y cifrado en tránsito)
* **Orquestación CI/CD:** GitHub Actions

---

## Estructura del Repositorio

```text
.
├── .github/
│   └── workflows/
│       └── deploy.yml          # Definición del flujo CI/CD en GitHub Actions
├── main.tf                     # Definición de recursos (RG, VNet, Subredes, NSG)
├── variables.tf                # Variables parametrizables del despliegue
├── versions.tf                 # Proveedores requeridos y configuración del backend remoto
└── README.md                   # Documentación del proyecto
