
# Create Checkout Bank Transfer Request

Checkout bank transfer payment request

## Structure

`CreateCheckoutBankTransferRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bank` | `Array[String]` | Required | Bank |
| `retries` | `Integer` | Required | Number of retries for processing |

## Example

```ruby
create_checkout_bank_transfer_request = CreateCheckoutBankTransferRequest.new(
  [
    'bank7',
    'bank8',
    'bank9'
  ],
  100
)
```

