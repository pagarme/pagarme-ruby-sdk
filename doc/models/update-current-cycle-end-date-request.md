
# Update Current Cycle End Date Request

Request to update the end date of the current subscription cycle

## Structure

`UpdateCurrentCycleEndDateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `end_at` | `DateTime` | Optional | Current cycle end date |

## Example

```ruby
update_current_cycle_end_date_request = UpdateCurrentCycleEndDateRequest.new(
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

