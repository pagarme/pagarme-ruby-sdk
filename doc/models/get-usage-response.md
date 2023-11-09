
# Get Usage Response

Response object for getting a usage

## Structure

`GetUsageResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | Id |
| `quantity` | `Integer` | Optional | Quantity |
| `description` | `String` | Optional | Description |
| `used_at` | `DateTime` | Optional | Used at |
| `created_at` | `DateTime` | Optional | Creation date |
| `status` | `String` | Optional | Status |
| `deleted_at` | `DateTime` | Optional | - |
| `subscription_item` | [`GetSubscriptionItemResponse`](../../doc/models/get-subscription-item-response.md) | Optional | Subscription item |
| `code` | `String` | Optional | Identification code in the client system |
| `group` | `String` | Optional | Identification group in the client system |
| `amount` | `Integer` | Optional | Field used in item scheme type 'Percent' |

## Example (as JSON)

```json
{
  "id": "id2",
  "quantity": 34,
  "description": "description2",
  "used_at": "2016-03-13T12:52:32.123Z",
  "created_at": "2016-03-13T12:52:32.123Z"
}
```

