
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

## Example

```ruby
create_order_item_request = CreateOrderItemRequest.new(
  230,
  'description6',
  140,
  'category8',
  'code2'
)
```

