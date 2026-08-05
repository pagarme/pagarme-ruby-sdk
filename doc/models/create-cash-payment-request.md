
# Create Cash Payment Request

## Structure

`CreateCashPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `description` | `String` | Required | Description |
| `confirm` | `TrueClass \| FalseClass` | Required | Indicates whether cash collection will be confirmed in the act of creation |

## Example

```ruby
create_cash_payment_request = CreateCashPaymentRequest.new(
  'description8',
  false
)
```

