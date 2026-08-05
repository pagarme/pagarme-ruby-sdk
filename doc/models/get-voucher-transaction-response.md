
# Get Voucher Transaction Response

Response for voucher transactions

## Structure

`GetVoucherTransactionResponse`

## Inherits From

[`GetTransactionResponse`](../../doc/models/get-transaction-response.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `statement_descriptor` | `String` | Optional | Text that will appear on the voucher's statement |
| `acquirer_name` | `String` | Optional | Acquirer name |
| `acquirer_affiliation_code` | `String` | Optional | Acquirer affiliation code |
| `acquirer_tid` | `String` | Optional | Acquirer TID |
| `acquirer_nsu` | `String` | Optional | Acquirer NSU |
| `acquirer_auth_code` | `String` | Optional | Acquirer authorization code |
| `acquirer_message` | `String` | Optional | acquirer_message |
| `acquirer_return_code` | `String` | Optional | Acquirer return code |
| `operation_type` | `String` | Optional | Operation type |
| `card` | [`GetCardResponse`](../../doc/models/get-card-response.md) | Optional | Card data |

## Example

```ruby
get_voucher_transaction_response = GetVoucherTransactionResponse.new(
  'statement_descriptor8',
  'acquirer_name2',
  'acquirer_affiliation_code0',
  'acquirer_tid2',
  'acquirer_nsu2',
  nil,
  nil,
  nil,
  nil,
  nil,
  'gateway_id8',
  40,
  'status6',
  false,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

