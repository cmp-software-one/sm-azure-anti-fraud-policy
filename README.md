# About this Automation

This module creates an Azure Policy to block specific Resource Types bieng built in your environment

## Fields and Best Practices

| Name              | Description                                                          | Type   | Default                                                           | Required |
|-------------------|----------------------------------------------------------------------|--------|-------------------------------------------------------------------|----------|
| policy_name       | Name of the policy definition                                        | string | "anti-fraud-policy"                                               | yes      |
| scope             | Subscription or Resource Group where you want to apply the policy    | string | n/a                                                               | yes      |
| display_name      | Display name of the policy definition                                | string | "Anti-Fraud Policy"                                               | yes      |
| description       | Description of the policy definition                                 | string | "This policy audits virtual machines not published by Canonical." | yes      |
| policy_mode       | Mode of the policy definition                                        | string | "All"                                                             | yes      |
| Subscription      | Subscription that the policy is going to be applied                  | string | n/a                                                               | yes      |



