
# Get Transfer Response

Transfer response

## Structure

`GetTransferResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | Id |
| `amount` | `Integer` | Optional | Transfer amount |
| `status` | `String` | Optional | Transfer status |
| `created_at` | `DateTime` | Optional | Transfer creation date |
| `updated_at` | `DateTime` | Optional | Transfer last update date |
| `bank_account` | [`GetBankAccountResponse`](../../doc/models/get-bank-account-response.md) | Optional | Bank account |
| `metadata` | `Hash[String, String]` | Optional | Metadata |

## Example

```ruby
get_transfer_response = GetTransferResponse.new(
  'id2',
  92,
  'status6',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

