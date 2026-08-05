
# Create Access Token Request

Request for creating a new Access Token

## Structure

`CreateAccessTokenRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `expires_in` | `Integer` | Optional | Minutes to expire the token |

## Example

```ruby
create_access_token_request = CreateAccessTokenRequest.new(
  188
)
```

