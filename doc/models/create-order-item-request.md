
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
| `category` | `String` | Required | Category |
| `code` | `String` | Optional | The item code passed by the client |

## Example (as JSON)

```json
{
  "amount": 102,
  "description": "description4",
  "quantity": 216,
  "category": "category4",
  "code": "code4"
}
```

