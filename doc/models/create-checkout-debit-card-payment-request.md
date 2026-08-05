
# Create Checkout Debit Card Payment Request

Checkout credit card payment request

## Structure

`CreateCheckoutDebitCardPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `statement_descriptor` | `String` | Optional | Card invoice text descriptor |
| `authentication` | [`CreatePaymentAuthenticationRequest`](../../doc/models/create-payment-authentication-request.md) | Required | Creates payment authentication |

## Example

```ruby
create_checkout_debit_card_payment_request = CreateCheckoutDebitCardPaymentRequest.new(
  CreatePaymentAuthenticationRequest.new(
    nil,
    CreateThreeDSecureRequest.new
  ),
  'statement_descriptor8'
)
```

