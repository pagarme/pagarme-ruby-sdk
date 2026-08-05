
# Create Shipping Request

Shipping data

## Structure

`CreateShippingRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Required | Shipping amount |
| `description` | `String` | Required | Description |
| `recipient_name` | `String` | Required | Recipient name |
| `recipient_phone` | `String` | Required | Recipient phone number |
| `address_id` | `String` | Required | The id of the address that will be used for shipping |
| `address` | [`CreateAddressRequest`](../../doc/models/create-address-request.md) | Required | Address data |
| `max_delivery_date` | `DateTime` | Optional | Data máxima de entrega |
| `estimated_delivery_date` | `DateTime` | Optional | Prazo estimado de entrega |
| `type` | `String` | Required | Shipping type |

## Example

```ruby
create_shipping_request = CreateShippingRequest.new(
  132,
  'description8',
  'recipient_name6',
  'recipient_phone0',
  'address_id2',
  CreateAddressRequest.new,
  'type2',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

