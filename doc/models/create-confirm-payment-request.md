
# Create Confirm Payment Request

## Structure

`CreateConfirmPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `description` | `String` | Required | Description |
| `amount` | `Integer` | Optional | Amount |
| `code` | `String` | Required | Code reference |

## Example

```ruby
create_confirm_payment_request = CreateConfirmPaymentRequest.new(
  'description4',
  'Code6',
  88
)
```

