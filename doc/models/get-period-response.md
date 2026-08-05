
# Get Period Response

Response object for getting a period

## Structure

`GetPeriodResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `start_at` | `DateTime` | Optional | - |
| `end_at` | `DateTime` | Optional | - |
| `id` | `String` | Optional | - |
| `billing_at` | `DateTime` | Optional | - |
| `subscription` | [`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md) | Optional | - |
| `status` | `String` | Optional | - |
| `duration` | `Integer` | Optional | - |
| `created_at` | `String` | Optional | - |
| `updated_at` | `String` | Optional | - |
| `cycle` | `Integer` | Optional | - |

## Example

```ruby
get_period_response = GetPeriodResponse.new(
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  'id8',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

