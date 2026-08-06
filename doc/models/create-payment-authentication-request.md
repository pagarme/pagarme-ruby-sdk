
# Create Payment Authentication Request

The payment authentication request

## Structure

`CreatePaymentAuthenticationRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | `String` | Required | The Authentication type |
| `threed_secure` | [`CreateThreeDSecureRequest`](../../doc/models/create-three-d-secure-request.md) | Required | The 3D-S authentication object |

## Example

```ruby
create_payment_authentication_request = CreatePaymentAuthenticationRequest.new(
  'type2',
  CreateThreeDSecureRequest.new
)
```

