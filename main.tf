terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.50.0"
    }
  }
}

provider "azurerm" {
  features {}

  # More information on the authentication methods supported by
  # the AzureRM Provider can be found here:
  # https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs

  tenant_id       = var.tenant_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
}

resource "azurerm_policy_definition" "anti_fraud_policy" {
  name         = var.policy_name
  display_name = var.display_name
  description  = var.description
  mode         = var.policy_mode
  policy_type  = "Custom"

  metadata = jsonencode({
    category = "Security Center"
  })

  policy_rule = jsonencode({
    "if" : {
      "allOf": [
        {
          "field": "type",
          "equals": "Microsoft.Compute/virtualMachines"
        },
        {
          "field": "Microsoft.Compute/imagePublisher",
          "notEquals": "Canonical"
        }
      ]
    },
    "then": {
      "effect": "audit"
    }
  })
}

resource "azurerm_subscription_policy_assignment" "policy_assignment" {
  name                 = var.policy_name
  policy_definition_id = azurerm_policy_definition.anti_fraud_policy.id
  display_name         = var.display_name
  subscription_id      = "/subscriptions/${var.subscription_id}"
}
