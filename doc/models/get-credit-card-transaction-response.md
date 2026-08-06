
# Get Credit Card Transaction Response

Response object for getting a credit card transaction

## Structure

`GetCreditCardTransactionResponse`

## Inherits From

[`GetTransactionResponse`](../../doc/models/get-transaction-response.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `statement_descriptor` | `String` | Optional | Text that will appear on the credit card's statement |
| `acquirer_name` | `String` | Optional | Acquirer name |
| `acquirer_affiliation_code` | `String` | Optional | Aquirer affiliation code |
| `acquirer_tid` | `String` | Optional | Acquirer TID |
| `acquirer_nsu` | `String` | Optional | Acquirer NSU |
| `acquirer_auth_code` | `String` | Optional | Acquirer authorization code |
| `operation_type` | `String` | Optional | Operation type |
| `card` | [`GetCardResponse`](../../doc/models/get-card-response.md) | Optional | Card data |
| `acquirer_message` | `String` | Optional | Acquirer message |
| `acquirer_return_code` | `String` | Optional | Acquirer Return Code |
| `installments` | `Integer` | Optional | Number of installments |
| `threed_authentication_url` | `String` | Optional | 3D-S authentication Url |
| `funding_source` | `String` | Optional | Identify when a card is prepaid, credit or debit. |
| `retry_info` | [`GetRetryTransactionInformationResponse`](../../doc/models/get-retry-transaction-information-response.md) | Optional | Retry transaction information |
| `brand_id` | `String` | Optional | - |
| `indirect_acceptor` | `String` | Optional | Business model identifier |

## Example

```ruby
get_credit_card_transaction_response = GetCreditCardTransactionResponse.new(
  'statement_descriptor2',
  'acquirer_name6',
  'acquirer_affiliation_code6',
  'acquirer_tid8',
  'acquirer_nsu8',
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

