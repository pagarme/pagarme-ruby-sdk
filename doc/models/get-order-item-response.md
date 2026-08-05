
# Get Order Item Response

Response object for getting an order item

## Structure

`GetOrderItemResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | Id |
| `type` | `String` | Optional | - |
| `description` | `String` | Optional | - |
| `amount` | `Integer` | Optional | - |
| `quantity` | `Integer` | Optional | - |
| `category` | `String` | Optional | Category |
| `code` | `String` | Optional | Code |
| `status` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |

## Example

```ruby
get_order_item_response = GetOrderItemResponse.new(
  'id4',
  'type6',
  'description4',
  140,
  254
)
```

