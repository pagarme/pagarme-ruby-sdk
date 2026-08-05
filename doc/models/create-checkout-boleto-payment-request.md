
# Create Checkout Boleto Payment Request

## Structure

`CreateCheckoutBoletoPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bank` | `String` | Required | Bank identifier |
| `instructions` | `String` | Required | Instructions |
| `due_at` | `DateTime` | Required | Due date |

## Example

```ruby
create_checkout_boleto_payment_request = CreateCheckoutBoletoPaymentRequest.new(
  'bank6',
  'instructions4',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

