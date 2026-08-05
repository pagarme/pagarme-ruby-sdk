
# Create Usage Request

Request for creating a usage

## Structure

`CreateUsageRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `quantity` | `Integer` | Required | - |
| `description` | `String` | Required | - |
| `used_at` | `DateTime` | Required | - |
| `code` | `String` | Optional | Identification code in the client system |
| `group` | `String` | Optional | identification group in the client system |
| `amount` | `Integer` | Optional | Field used in item scheme type 'Percent' |

## Example

```ruby
create_usage_request = CreateUsageRequest.new(
  222,
  'description2',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  'code0',
  'group0',
  108
)
```

