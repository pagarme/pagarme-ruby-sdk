
# Create Pix Payment Request

Contains information to create a pix payment

## Structure

`CreatePixPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `expires_at` | `DateTime` | Optional | Datetime when pix payment will expire |
| `expires_in` | `Integer` | Optional | Seconds until pix payment expires |
| `additional_information` | [`Array[PixAdditionalInformation]`](../../doc/models/pix-additional-information.md) | Optional | Pix additional information |

## Example

```ruby
create_pix_payment_request = CreatePixPaymentRequest.new(
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  136,
  [
    nil,
    PixAdditionalInformation.new,
    PixAdditionalInformation.new
  ]
)
```

