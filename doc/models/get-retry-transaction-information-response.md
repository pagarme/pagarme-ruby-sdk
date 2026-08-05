
# Get Retry Transaction Information Response

Response object for getting an RetryTransactionInformation

## Structure

`GetRetryTransactionInformationResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `brand_failure_return_code` | `String` | Required | - |
| `transaction_limit` | `Integer` | Required | - |
| `transaction_date_limit` | `DateTime` | Required | - |

## Example

```ruby
get_retry_transaction_information_response = GetRetryTransactionInformationResponse.new(
  'brand_failure_return_code8',
  212,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

