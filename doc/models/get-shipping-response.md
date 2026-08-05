
# Get Shipping Response

Response object for getting the shipping data

## Structure

`GetShippingResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Optional | - |
| `description` | `String` | Optional | - |
| `recipient_name` | `String` | Optional | - |
| `recipient_phone` | `String` | Optional | - |
| `address` | [`GetAddressResponse`](../../doc/models/get-address-response.md) | Optional | - |
| `max_delivery_date` | `DateTime` | Optional | Data máxima de entrega |
| `estimated_delivery_date` | `DateTime` | Optional | Prazo estimado de entrega |
| `type` | `String` | Optional | Shipping Type |

## Example

```ruby
get_shipping_response = GetShippingResponse.new(
  14,
  'description6',
  'recipient_name4',
  'recipient_phone8'
)
```

