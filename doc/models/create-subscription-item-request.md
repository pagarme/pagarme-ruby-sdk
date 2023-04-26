
# Create Subscription Item Request

Request for creating a new subscription item

## Structure

`CreateSubscriptionItemRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `description` | `String` | Required | Item description |
| `pricing_scheme` | [`CreatePricingSchemeRequest`](../../doc/models/create-pricing-scheme-request.md) | Required | Pricing scheme |
| `id` | `String` | Required | Item id |
| `plan_item_id` | `String` | Required | Plan item id |
| `discounts` | [`Array<CreateDiscountRequest>`](../../doc/models/create-discount-request.md) | Required | Discounts for the item |
| `name` | `String` | Required | Item name |
| `cycles` | `Integer` | Optional | Number of cycles which the item will be charged |
| `quantity` | `Integer` | Optional | Quantity of items |
| `minimum_price` | `Integer` | Optional | Minimum price |

## Example (as JSON)

```json
{
  "description": "description0",
  "pricing_scheme": {
    "scheme_type": "scheme_type8",
    "price_brackets": [
      {
        "start_quantity": 119,
        "price": 57,
        "end_quantity": 127,
        "overage_price": 141
      },
      {
        "start_quantity": 120,
        "price": 58,
        "end_quantity": 128,
        "overage_price": 142
      },
      {
        "start_quantity": 121,
        "price": 59,
        "end_quantity": 129,
        "overage_price": 143
      }
    ],
    "price": 166,
    "minimum_price": 6,
    "percentage": 251.76
  },
  "id": "id0",
  "plan_item_id": "plan_item_id0",
  "discounts": [
    {
      "value": 10.23,
      "discount_type": "discount_type9",
      "item_id": "item_id1",
      "cycles": 233,
      "description": "description1"
    },
    {
      "value": 10.24,
      "discount_type": "discount_type0",
      "item_id": "item_id2",
      "cycles": 232,
      "description": "description2"
    },
    {
      "value": 10.25,
      "discount_type": "discount_type1",
      "item_id": "item_id3",
      "cycles": 231,
      "description": "description3"
    }
  ],
  "name": "name0",
  "cycles": 168,
  "quantity": 68,
  "minimum_price": 176
}
```

