
# Get Transaction Report File Response

## Structure

`GetTransactionReportFileResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | - |
| `date` | `DateTime` | Optional | - |

## Example

```ruby
get_transaction_report_file_response = GetTransactionReportFileResponse.new(
  'name2',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

