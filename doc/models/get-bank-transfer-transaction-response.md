
# Get Bank Transfer Transaction Response

Response object for getting a bank transfer transaction

## Structure

`GetBankTransferTransactionResponse`

## Inherits From

[`GetTransactionResponse`](../../doc/models/get-transaction-response.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `url` | `String` | Optional | Payment url |
| `bank_tid` | `String` | Optional | Transaction identifier for the bank |
| `bank` | `String` | Optional | Bank |
| `paid_at` | `DateTime` | Optional | Payment date |
| `paid_amount` | `Integer` | Optional | Paid amount |

## Example

```ruby
get_bank_transfer_transaction_response = GetBankTransferTransactionResponse.new(
  'url8',
  'bank_tid8',
  'bank2',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  234,
  'gateway_id8',
  40,
  'status6',
  false,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

