
# Create Card Payment Contactless POI Request

## Structure

`CreateCardPaymentContactlessPOIRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `system_name` | `String` | Required | system name |
| `model` | `String` | Required | model |
| `provider` | `String` | Required | provider |
| `serial_number` | `String` | Required | serial number |
| `version_number` | `String` | Required | version number |

## Example

```ruby
create_card_payment_contactless_poi_request = CreateCardPaymentContactlessPOIRequest.new(
  'system_name8',
  'model6',
  'provider0',
  'serial_number2',
  'version_number2'
)
```

