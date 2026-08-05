
# Create Debit Card Payment Request

The settings for creating a debit card payment

## Structure

`CreateDebitCardPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `statement_descriptor` | `String` | Optional | The text that will be shown on the debit card's statement |
| `card` | [`CreateCardRequest`](../../doc/models/create-card-request.md) | Optional | Debit card data |
| `card_id` | `String` | Optional | The debit card id |
| `card_token` | `String` | Optional | The debit card token |
| `recurrence` | `TrueClass \| FalseClass` | Optional | Indicates a recurrence |
| `authentication` | [`CreatePaymentAuthenticationRequest`](../../doc/models/create-payment-authentication-request.md) | Optional | The payment authentication request |
| `token` | [`CreateCardPaymentContactlessRequest`](../../doc/models/create-card-payment-contactless-request.md) | Optional | The Debit card payment token request |
| `initiated_type` | `String` | Optional | - |
| `recurrence_model` | `String` | Optional | - |
| `payment_origin` | [`CreatePaymentOriginRequest`](../../doc/models/create-payment-origin-request.md) | Optional | - |

## Example

```ruby
create_debit_card_payment_request = CreateDebitCardPaymentRequest.new(
  'statement_descriptor2',
  nil,
  'card_id8',
  'card_token8',
  false
)
```

