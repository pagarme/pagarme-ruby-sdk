
# Create Card Payment Contactless Request

The card payment contactless request

## Structure

`CreateCardPaymentContactlessRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | `String` | Required | The authentication type |
| `apple_pay` | [`CreateApplePayRequest`](../../doc/models/create-apple-pay-request.md) | Optional | The ApplePay encrypted request |
| `google_pay` | [`CreateGooglePayRequest`](../../doc/models/create-google-pay-request.md) | Optional | The GooglePay encrypted request |
| `emv` | [`CreateEmvDecryptRequest`](../../doc/models/create-emv-decrypt-request.md) | Optional | The Emv encrypted request |

## Example

```ruby
create_card_payment_contactless_request = CreateCardPaymentContactlessRequest.new(
  'type4'
)
```

