
# Get Balance Response

Balance

## Structure

`GetBalanceResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `currency` | `String` | Optional | Currency (official ISO 4217 currency names) |
| `available_amount` | `Integer` | Optional | Amount available for transferring in cents |
| `recipient` | [`GetRecipientResponse`](../../doc/models/get-recipient-response.md) | Optional | Recipient |
| `transferred_amount` | `Integer` | Optional | Amount transfered in cents |
| `waiting_funds_amount` | `Integer` | Optional | Amount waiting in cents |
| `payment_profile_id` | `String` | Required | Operational id of merchant in payments operations (new) |

## Example

```ruby
get_balance_response = GetBalanceResponse.new(
  'pp_abcdefghoj20klmn09k',
  'BRL',
  4996,
  GetRecipientResponse.new(
    're_abcdefghoj20klmn09k',
    'Lojista Recebedor LTDA',
    'email@stone.com.br',
    '01032644222100',
    nil,
    nil,
    'active',
    DateTimeHelper.from_rfc3339('2026-06-22T19:13:52Z')
  ),
  nil,
  0
)
```

