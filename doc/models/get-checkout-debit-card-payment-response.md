
# Get Checkout Debit Card Payment Response

## Structure

`GetCheckoutDebitCardPaymentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `statement_descriptor` | `String` | Optional | Descrição na fatura |
| `authentication` | [`GetPaymentAuthenticationResponse`](../../doc/models/get-payment-authentication-response.md) | Optional | Payment Authentication response object data |

## Example

```ruby
get_checkout_debit_card_payment_response = GetCheckoutDebitCardPaymentResponse.new(
  'statement_descriptor8'
)
```

