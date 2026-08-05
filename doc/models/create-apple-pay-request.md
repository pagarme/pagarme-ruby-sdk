
# Create Apple Pay Request

The ApplePay Token Payment Request

## Structure

`CreateApplePayRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `version` | `String` | Required | The token version |
| `data` | `String` | Required | The cryptography data |
| `header` | [`CreateApplePayHeaderRequest`](../../doc/models/create-apple-pay-header-request.md) | Required | The ApplePay header request |
| `signature` | `String` | Required | Detached PKCS #7 signature, Base64 encoded as string |
| `merchant_identifier` | `String` | Required | ApplePay Merchant identifier |

## Example

```ruby
create_apple_pay_request = CreateApplePayRequest.new(
  'version0',
  'data4',
  CreateApplePayHeaderRequest.new,
  'signature2',
  'merchant_identifier8'
)
```

