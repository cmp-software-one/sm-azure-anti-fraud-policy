# Terraform Azure Anti-Fraud Policy Module

This module creates an Azure Policy Definition and Assignment to enforce required tags on Azure resources.

## Usage

1. Install Terraform (version 0.13 or later) and configure your Azure credentials.
2. Clone this repository and navigate to the root directory.
3. Run terraform init to initialize the provider and modules.
4. Customize the variables in variables.tf as needed.
5. Run terraform apply to create or update the Azure resources.


## Inputs

| Name              | Description                                                          | Type   | Default                                                           | Required |
|-------------------|----------------------------------------------------------------------|--------|-------------------------------------------------------------------|----------|
| policy_name       | Name of the policy definition                                        | string | "anti-fraud-policy"                                               | yes      |
| scope             | Subscription or Resource Group where you want to apply the policy    | string | n/a                                                               | yes      |
| display_name      | Display name of the policy definition                                | string | "Anti-Fraud Policy"                                               | yes      |
| description       | Description of the policy definition                                 | string | "This policy audits virtual machines not published by Canonical." | yes      |
| policy_mode       | Mode of the policy definition                                        | string | "All"                                                             | yes      |


## Example

terraform plan -var 'scope="/subscriptions/b1db2d61-6edf-4e6f-b42f-286904728d93"'

Sign in using az login from Powershell is required to run the main.tf 

