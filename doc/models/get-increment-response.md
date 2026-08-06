
# Get Increment Response

Response object for getting a increment

## Structure

`GetIncrementResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `value` | `Float` | Optional | - |
| `increment_type` | `String` | Optional | - |
| `status` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `cycles` | `Integer` | Optional | - |
| `deleted_at` | `DateTime` | Optional | - |
| `description` | `String` | Optional | - |
| `subscription` | [`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md) | Optional | - |
| `subscription_item` | [`GetSubscriptionItemResponse`](../../doc/models/get-subscription-item-response.md) | Optional | The Subscription Item |

## Example

```ruby
get_increment_response = GetIncrementResponse.new(
  'id2',
  68.64,
  'increment_type4',
  'status6',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

