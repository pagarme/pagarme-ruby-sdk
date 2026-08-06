
# Create Period Request

## Structure

`CreatePeriodRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `end_at` | `DateTime` | Optional | - |

## Example

```ruby
create_period_request = CreatePeriodRequest.new(
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

