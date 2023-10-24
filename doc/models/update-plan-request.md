
# Update Plan Request

Request for updating a plan

## Structure

`UpdatePlanRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | Plan's name |
| `description` | `String` | Required | Description |
| `installments` | `Array<Integer>` | Required | Number os installments |
| `statement_descriptor` | `String` | Required | Text that will be shown on the credit card's statement |
| `currency` | `String` | Required | Currency |
| `interval` | `String` | Required | Interval |
| `interval_count` | `Integer` | Required | Interval count |
| `payment_methods` | `Array<String>` | Required | Payment methods accepted by the plan |
| `billing_type` | `String` | Required | Billing type |
| `status` | `String` | Required | Plan status |
| `shippable` | `TrueClass \| FalseClass` | Required | Indicates if the plan is shippable |
| `billing_days` | `Array<Integer>` | Required | Billing days accepted by the plan |
| `metadata` | `Hash[String, String]` | Required | Metadata |
| `minimum_price` | `Integer` | Optional | Minimum price |
| `trial_period_days` | `Integer` | Optional | Number of trial period in days, where the customer will not be charged |

## Example (as JSON)

```json
{
  "name": "name0",
  "description": "description0",
  "installments": [
    121,
    122,
    123
  ],
  "statement_descriptor": "statement_descriptor0",
  "currency": "currency0",
  "interval": "interval8",
  "interval_count": 84,
  "payment_methods": [
    "payment_methods5",
    "payment_methods6"
  ],
  "billing_type": "billing_type6",
  "status": "status8",
  "shippable": false,
  "billing_days": [
    171,
    170
  ],
  "metadata": {
    "key0": "metadata3",
    "key1": "metadata4",
    "key2": "metadata5"
  },
  "minimum_price": 174,
  "trial_period_days": 56
}
```

