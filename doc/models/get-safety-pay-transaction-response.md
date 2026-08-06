
# Get Safety Pay Transaction Response

Response object for getting a safety pay transaction

## Structure

`GetSafetyPayTransactionResponse`

## Inherits From

[`GetTransactionResponse`](../../doc/models/get-transaction-response.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `url` | `String` | Optional | Payment url |
| `bank_tid` | `String` | Optional | Transaction identifier on bank |
| `paid_at` | `DateTime` | Optional | Payment date |
| `paid_amount` | `Integer` | Optional | Paid amount |

## Example

```ruby
get_safety_pay_transaction_response = GetSafetyPayTransactionResponse.new(
  'url8',
  'bank_tid8',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  68,
  'gateway_id8',
  40,
  'status6',
  false,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

