
# Create Checkout Credit Card Payment Request

Checkout card payment request

## Structure

`CreateCheckoutCreditCardPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `statement_descriptor` | `String` | Optional | Card invoice text descriptor |
| `installments` | [`Array[CreateCheckoutCardInstallmentOptionRequest]`](../../doc/models/create-checkout-card-installment-option-request.md) | Optional | Payment installment options |
| `authentication` | [`CreatePaymentAuthenticationRequest`](../../doc/models/create-payment-authentication-request.md) | Optional | Creates payment authentication |
| `capture` | `TrueClass \| FalseClass` | Optional | Authorize and capture? |

## Example

```ruby
create_checkout_credit_card_payment_request = CreateCheckoutCreditCardPaymentRequest.new(
  'statement_descriptor6',
  [
    nil
  ],
  nil,
  false
)
```

