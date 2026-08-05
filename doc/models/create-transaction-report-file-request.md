
# Create Transaction Report File Request

## Structure

`CreateTransactionReportFileRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `start_at` | `DateTime` | Optional | - |
| `end_at` | `String` | Optional | - |

## Example

```ruby
create_transaction_report_file_request = CreateTransactionReportFileRequest.new(
  'name8',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  'end_at2'
)
```

