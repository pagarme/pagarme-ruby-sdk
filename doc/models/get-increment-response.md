
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

## Example (as JSON)

```json
{
  "id": null,
  "value": null,
  "increment_type": null,
  "status": null,
  "created_at": null,
  "cycles": null,
  "deleted_at": null,
  "description": null,
  "subscription": null,
  "subscription_item": null
}
```

