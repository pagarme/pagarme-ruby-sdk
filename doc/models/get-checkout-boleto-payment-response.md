
# Get Checkout Boleto Payment Response

## Structure

`GetCheckoutBoletoPaymentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `due_at` | `DateTime` | Optional | Data de vencimento do boleto |
| `instructions` | `String` | Optional | Instruções do boleto |

## Example

```ruby
get_checkout_boleto_payment_response = GetCheckoutBoletoPaymentResponse.new(
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  'instructions2'
)
```

