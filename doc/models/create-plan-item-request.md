
# Create Plan Item Request

Request for creating a plan item

## Structure

`CreatePlanItemRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | Item name |
| `pricing_scheme` | [`CreatePricingSchemeRequest`](../../doc/models/create-pricing-scheme-request.md) | Required | Item's pricing scheme |
| `id` | `String` | Required | Item's id |
| `description` | `String` | Required | Item's description |
| `cycles` | `Integer` | Optional | Number of cycles where the item will be charged |
| `quantity` | `Integer` | Optional | Quantity |

## Example (as JSON)

```json
{
  "name": "name0",
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
  "description": "description0",
  "cycles": 168,
  "quantity": 68
}
```

