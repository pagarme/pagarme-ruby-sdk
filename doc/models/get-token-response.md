
# Get Token Response

Token data

## Structure

`GetTokenResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `type` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `expires_at` | `String` | Optional | - |
| `card` | [`GetCardTokenResponse`](../../doc/models/get-card-token-response.md) | Optional | - |

## Example

```ruby
get_token_response = GetTokenResponse.new(
  'id2',
  'type8',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  'expires_at4'
)
```

