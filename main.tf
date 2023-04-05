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
