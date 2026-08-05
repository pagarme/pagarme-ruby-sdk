
# Get Plan Item Response

Response object for getting a plan item

## Structure

`GetPlanItemResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `name` | `String` | Optional | - |
| `status` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `pricing_scheme` | [`GetPricingSchemeResponse`](../../doc/models/get-pricing-scheme-response.md) | Optional | - |
| `description` | `String` | Optional | - |
| `plan` | [`GetPlanResponse`](../../doc/models/get-plan-response.md) | Optional | - |
| `quantity` | `Integer` | Optional | - |
| `cycles` | `Integer` | Optional | - |
| `deleted_at` | `DateTime` | Optional | - |

## Example

```ruby
get_plan_item_response = GetPlanItemResponse.new(
  'id0',
  'name0',
  'status2',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

