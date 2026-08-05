
# List Transfers

## Structure

`ListTransfers`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `data` | [`Array[GetTransfer]`](../../doc/models/get-transfer.md) | Required | The Increments response |
| `paging` | [`PagingResponse`](../../doc/models/paging-response.md) | Required | Paging object |

## Example

```ruby
list_transfers = ListTransfers.new(
  [
    nil
  ],
  PagingResponse.new
)
```

