
# Get Checkout Bank Transfer Payment Response

Bank transfer checkout response

## Structure

`GetCheckoutBankTransferPaymentResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bank` | `Array[String]` | Optional | bank list response |

## Example

```ruby
get_checkout_bank_transfer_payment_response = GetCheckoutBankTransferPaymentResponse.new(
  [
    'bank9',
    'bank0',
    'bank1'
  ]
)
```

