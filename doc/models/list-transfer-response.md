
# List Transfer Response

List of paginated transfer objects

## Structure

`ListTransferResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `data` | [`Array[GetTransferResponse]`](../../doc/models/get-transfer-response.md) | Optional | Transfers |
| `paging` | [`PagingResponse`](../../doc/models/paging-response.md) | Optional | Paging |

## Example

```ruby
list_transfer_response = ListTransferResponse.new(
  [
    nil
  ]
)
```

