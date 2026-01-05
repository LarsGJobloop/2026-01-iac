# Infrastructure as Code

Infrastucture as Code (IaC) allows you to describe many of the service that you will encounter when developing for the cloud/web as code.

Allowing both version control, reproducibility and modularization of infrastructure components.

## Primary Commands

- Initialize the project and download all dependencies:

    ```sh
    terraform init
    ```

- Review changes that will happen if applied:

    ```sh
    terraform plan
    ```

- Apply configuration:

    ```sh
    terraform apply
    ```

- Destroy all that is described:

    ```sh
    terraform destroy
    ```

## Primary Tools

**What we will use**:
- [Terraform](https://developer.hashicorp.com/terraform): Dominates the market
- [OpenTofu](https://opentofu.org/): And open source Terraform fork after Licensing changes, currently conforms to the interface provided by Terraform
- [Terraform Registry](https://registry.terraform.io/): HashiCorps open registry for sharing infrastructure providers and modules.

**Other Options**:

- [Pulumi](https://www.pulumi.com/): Uses generic programming languages for defining infrastructure
- [Cluster API](https://cluster-api.sigs.k8s.io/): IaC Controller for Kubernetes, extremely flexibly (ie. Complex), and requires a Kubernetes control plane
- [Bicep](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/overview?tabs=bicep)/[ARM](https://learn.microsoft.com/en-us/azure/azure-resource-manager/management/overview): Microsofts attempt at cornering the market, only exists inside the Microsoft Azure ecosystem
- [AWS CloudFormation](https://aws.amazon.com/cloudformation/): AWS attempt at cornering the market, only used inside AWS's ecosystem
