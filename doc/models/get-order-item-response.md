
# Get Order Item Response

Response object for getting an order item

## Structure

`GetOrderItemResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | Id |
| `amount` | `Integer` | Required | - |
| `description` | `String` | Required | - |
| `quantity` | `Integer` | Required | - |
| `get_seller_response` | [`GetSellerResponse`](/doc/models/get-seller-response.md) | Optional | Seller data |
| `category` | `String` | Required | Category |
| `code` | `String` | Required | Code |

## Example (as JSON)

```json
{
  "id": "id0",
  "amount": 46,
  "description": "description0",
  "quantity": 68,
  "GetSellerResponse": null,
  "category": "category2",
  "code": "code8"
}
```

