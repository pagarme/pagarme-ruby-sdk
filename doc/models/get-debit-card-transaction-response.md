
# Get Debit Card Transaction Response

Response object for getting a debit card transaction

## Structure

`GetDebitCardTransactionResponse`

## Inherits From

[`GetTransactionResponse`](../../doc/models/get-transaction-response.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `statement_descriptor` | `String` | Optional | Text that will appear on the debit card's statement |
| `acquirer_name` | `String` | Optional | Acquirer name |
| `acquirer_affiliation_code` | `String` | Optional | Aquirer affiliation code |
| `acquirer_tid` | `String` | Optional | Acquirer TID |
| `acquirer_nsu` | `String` | Optional | Acquirer NSU |
| `acquirer_auth_code` | `String` | Optional | Acquirer authorization code |
| `operation_type` | `String` | Optional | Operation type |
| `card` | [`GetCardResponse`](../../doc/models/get-card-response.md) | Optional | Card data |
| `acquirer_message` | `String` | Optional | Acquirer message |
| `acquirer_return_code` | `String` | Optional | Acquirer Return Code |
| `mpi` | `String` | Optional | Merchant Plugin |
| `eci` | `String` | Optional | Electronic Commerce Indicator (ECI) |
| `authentication_type` | `String` | Optional | Authentication type |
| `threed_authentication_url` | `String` | Optional | 3D-S Authentication Url |
| `funding_source` | `String` | Optional | Identify when a card is prepaid, credit or debit. |
| `retry_info` | [`GetRetryTransactionInformationResponse`](../../doc/models/get-retry-transaction-information-response.md) | Optional | Retry transaction information |
| `brand_id` | `String` | Optional | - |

## Example

```ruby
get_debit_card_transaction_response = GetDebitCardTransactionResponse.new(
  'statement_descriptor4',
  'acquirer_name8',
  'acquirer_affiliation_code6',
  'acquirer_tid4',
  'acquirer_nsu4',
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
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

