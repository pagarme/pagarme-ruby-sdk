
# Create Bank Transfer Payment Request

Request for creating a bank transfer payment

## Structure

`CreateBankTransferPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bank` | `String` | Required | Bank |
| `retries` | `Integer` | Required | Number of retries |

## Example

```ruby
create_bank_transfer_payment_request = CreateBankTransferPaymentRequest.new(
  'bank6',
  114
)
```

