
# Get Discount Response

Response object for getting a discount

## Structure

`GetDiscountResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `value` | `Float` | Optional | - |
| `discount_type` | `String` | Optional | - |
| `status` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `cycles` | `Integer` | Optional | - |
| `deleted_at` | `DateTime` | Optional | - |
| `description` | `String` | Optional | - |
| `subscription` | [`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md) | Optional | - |
| `subscription_item` | [`GetSubscriptionItemResponse`](../../doc/models/get-subscription-item-response.md) | Optional | The subscription item |

## Example (as JSON)

```json
{
  "id": "id4",
  "value": 139.66,
  "discount_type": "discount_type2",
  "status": "status6",
  "created_at": "2016-03-13T12:52:32.123Z"
}
```

