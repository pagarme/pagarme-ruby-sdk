
# Create Token Request

Token data

## Structure

`CreateTokenRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | `String` | Required | Token type<br><br>**Default**: `'card'` |
| `card` | [`CreateCardTokenRequest`](../../doc/models/create-card-token-request.md) | Required | Card data |

## Example

```ruby
create_token_request = CreateTokenRequest.new(
  'card',
  CreateCardTokenRequest.new
)
```

