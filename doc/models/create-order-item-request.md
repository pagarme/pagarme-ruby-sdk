
# Create Order Item Request

Request for creating an order item

## Structure

`CreateOrderItemRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Required | Amount |
| `description` | `String` | Required | Description |
| `quantity` | `Integer` | Required | Quantity |
| `seller` | [`CreateSellerRequest`](/doc/models/create-seller-request.md) | Optional | Item seller |
| `seller_id` | `String` | Optional | seller identificator |
| `category` | `String` | Required | Category |
| `code` | `String` | Optional | The item code passed by the client |

## Example (as JSON)

```json
{
  "amount": 46,
  "description": "description0",
  "quantity": 68,
  "seller": null,
  "seller_id": null,
  "category": "category2",
  "code": null
}
```

