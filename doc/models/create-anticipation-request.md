
# Create Anticipation Request

Request for creating an anticipation

## Structure

`CreateAnticipationRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Required | Amount requested for the anticipation |
| `timeframe` | `String` | Required | Timeframe |
| `payment_date` | `DateTime` | Required | Payment date |

## Example

```ruby
create_anticipation_request = CreateAnticipationRequest.new(
  40,
  'timeframe2',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

