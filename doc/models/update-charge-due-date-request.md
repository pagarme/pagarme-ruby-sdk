
# Update Charge Due Date Request

Request for updating a charge due date

## Structure

`UpdateChargeDueDateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `due_at` | `DateTime` | Optional | The charge's new due date |

## Example

```ruby
update_charge_due_date_request = UpdateChargeDueDateRequest.new(
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

