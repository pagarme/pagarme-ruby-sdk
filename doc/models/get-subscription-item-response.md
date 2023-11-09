
# Get Subscription Item Response

## Structure

`GetSubscriptionItemResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `status` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `pricing_scheme` | [`GetPricingSchemeResponse`](../../doc/models/get-pricing-scheme-response.md) | Optional | - |
| `discounts` | [`Array<GetDiscountResponse>`](../../doc/models/get-discount-response.md) | Optional | - |
| `increments` | [`Array<GetIncrementResponse>`](../../doc/models/get-increment-response.md) | Optional | - |
| `subscription` | [`GetSubscriptionResponse`](../../doc/models/get-subscription-response.md) | Optional | - |
| `name` | `String` | Optional | Item name |
| `quantity` | `Integer` | Optional | - |
| `cycles` | `Integer` | Optional | - |
| `deleted_at` | `DateTime` | Optional | - |

## Example (as JSON)

```json
{
  "id": "id2",
  "description": "description8",
  "status": "status6",
  "created_at": "2016-03-13T12:52:32.123Z",
  "updated_at": "2016-03-13T12:52:32.123Z"
}
```

