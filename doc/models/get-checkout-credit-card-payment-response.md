
# Get Checkout Credit Card Payment Response

## Structure

`GetCheckoutCreditCardPaymentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `statement_descriptor` | `String` | Optional | Descrição na fatura |
| `installments` | [`Array[GetCheckoutCardInstallmentOptionsResponse]`](../../doc/models/get-checkout-card-installment-options-response.md) | Optional | Parcelas |
| `authentication` | [`GetPaymentAuthenticationResponse`](../../doc/models/get-payment-authentication-response.md) | Optional | Payment Authentication response |

## Example

```ruby
get_checkout_credit_card_payment_response = GetCheckoutCreditCardPaymentResponse.new(
  'statementDescriptor8',
  [
    nil,
    GetCheckoutCardInstallmentOptionsResponse.new,
    GetCheckoutCardInstallmentOptionsResponse.new
  ]
)
```

