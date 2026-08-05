
# List Access Tokens Response

Response object for listing access tokens

## Structure

`ListAccessTokensResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `data` | [`Array[GetAccessTokenResponse]`](../../doc/models/get-access-token-response.md) | Optional | The access token objects |
| `paging` | [`PagingResponse`](../../doc/models/paging-response.md) | Optional | Paging object |

## Example

```ruby
list_access_tokens_response = ListAccessTokensResponse.new(
  [
    nil
  ]
)
```

