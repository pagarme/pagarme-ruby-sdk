
# Update Plan Request

Request for updating a plan

## Structure

`UpdatePlanRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | Plan's name |
| `description` | `String` | Required | Description |
| `installments` | `Array[Integer]` | Required | Number os installments |
| `statement_descriptor` | `String` | Required | Text that will be shown on the credit card's statement |
| `currency` | `String` | Required | Currency |
| `interval` | `String` | Required | Interval |
| `interval_count` | `Integer` | Required | Interval count |
| `payment_methods` | `Array[String]` | Required | Payment methods accepted by the plan |
| `billing_type` | `String` | Required | Billing type |
| `status` | `String` | Required | Plan status |
| `shippable` | `TrueClass \| FalseClass` | Required | Indicates if the plan is shippable |
| `billing_days` | `Array[Integer]` | Required | Billing days accepted by the plan |
| `metadata` | `Hash[String, String]` | Required | Metadata |
| `minimum_price` | `Integer` | Optional | Minimum price |
| `trial_period_days` | `Integer` | Optional | Number of trial period in days, where the customer will not be charged |

## Example

```ruby
update_plan_request = UpdatePlanRequest.new(
  'name0',
  'description0',
  [
    73,
    74
  ],
  'statement_descriptor0',
  'currency0',
  'interval8',
  36,
  [
    'payment_methods5',
    'payment_methods4',
    'payment_methods3'
  ],
  'billing_type6',
  'status2',
  false,
  [
    37
  ],
  {
    'key0': 'metadata3'
  },
  222,
  8
)
```

