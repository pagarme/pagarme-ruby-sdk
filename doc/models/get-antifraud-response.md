
# Get Antifraud Response

## Structure

`GetAntifraudResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | `String` | Optional | - |
| `return_code` | `String` | Optional | - |
| `return_message` | `String` | Optional | - |
| `provider_name` | `String` | Optional | - |
| `score` | `String` | Optional | - |

## Example

```ruby
get_antifraud_response = GetAntifraudResponse.new(
  'status6',
  'return_code2',
  'return_message0',
  'provider_name0',
  'score2'
)
```

