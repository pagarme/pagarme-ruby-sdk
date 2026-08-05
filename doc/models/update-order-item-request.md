
# Update Order Item Request

Update Order item Request

## Structure

`UpdateOrderItemRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Required | - |
| `description` | `String` | Required | - |
| `quantity` | `Integer` | Required | - |
| `category` | `String` | Required | - |

## Example

```ruby
update_order_item_request = UpdateOrderItemRequest.new(
  234,
  'description4',
  92,
  'category2'
)
```

