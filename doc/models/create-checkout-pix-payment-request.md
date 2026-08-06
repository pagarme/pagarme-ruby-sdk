
# Create Checkout Pix Payment Request

Checkout pix payment request

## Structure

`CreateCheckoutPixPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `expires_at` | `DateTime` | Optional | Expires at |
| `expires_in` | `Integer` | Optional | Expires in |
| `additional_information` | [`Array[PixAdditionalInformation]`](../../doc/models/pix-additional-information.md) | Optional | Additional information |

## Example

```ruby
create_checkout_pix_payment_request = CreateCheckoutPixPaymentRequest.new(
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  184,
  [
    nil
  ]
)
```

