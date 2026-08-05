
# Get Checkout Pix Payment Response

Checkout pix payment response

## Structure

`GetCheckoutPixPaymentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `expires_at` | `DateTime` | Optional | Expires at |
| `additional_information` | [`Array[PixAdditionalInformation]`](../../doc/models/pix-additional-information.md) | Optional | Additional information |

## Example

```ruby
get_checkout_pix_payment_response = GetCheckoutPixPaymentResponse.new(
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  [
    nil,
    PixAdditionalInformation.new,
    PixAdditionalInformation.new
  ]
)
```

