
# Get Plan Response

Response object for getting a plan

## Structure

`GetPlanResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `name` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `url` | `String` | Optional | - |
| `statement_descriptor` | `String` | Optional | - |
| `interval` | `String` | Optional | - |
| `interval_count` | `Integer` | Optional | - |
| `billing_type` | `String` | Optional | - |
| `payment_methods` | `Array<String>` | Optional | - |
| `installments` | `Array<Integer>` | Optional | - |
| `status` | `String` | Optional | - |
| `currency` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `items` | [`Array<GetPlanItemResponse>`](../../doc/models/get-plan-item-response.md) | Optional | - |
| `billing_days` | `Array<Integer>` | Optional | - |
| `shippable` | `TrueClass\|FalseClass` | Optional | - |
| `metadata` | `Hash of String` | Optional | - |
| `trial_period_days` | `Integer` | Optional | - |
| `minimum_price` | `Integer` | Optional | - |
| `deleted_at` | `DateTime` | Optional | - |

## Example (as JSON)

```json
{
  "id": "id0",
  "name": "name0",
  "description": "description0",
  "url": "url4",
  "statement_descriptor": "statement_descriptor0"
}
```

