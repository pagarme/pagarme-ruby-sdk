
# Get Anticipation Response

Anticipation

## Structure

`GetAnticipationResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | Id |
| `requested_amount` | `Integer` | Optional | Requested amount |
| `approved_amount` | `Integer` | Optional | Approved amount |
| `recipient` | [`GetRecipientResponse`](../../doc/models/get-recipient-response.md) | Optional | Recipient |
| `pgid` | `String` | Optional | Anticipation id on the gateway |
| `created_at` | `DateTime` | Optional | Creation date |
| `updated_at` | `DateTime` | Optional | Last update date |
| `payment_date` | `DateTime` | Optional | Payment date |
| `status` | `String` | Optional | Status |
| `timeframe` | `String` | Optional | Timeframe |

## Example

```ruby
get_anticipation_response = GetAnticipationResponse.new(
  'id8',
  158,
  212,
  nil,
  'pgid4'
)
```

