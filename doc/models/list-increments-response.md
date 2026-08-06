
# List Increments Response

## Structure

`ListIncrementsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `data` | [`Array[GetIncrementResponse]`](../../doc/models/get-increment-response.md) | Optional | The Increments response |
| `paging` | [`PagingResponse`](../../doc/models/paging-response.md) | Optional | Paging object |

## Example

```ruby
list_increments_response = ListIncrementsResponse.new(
  [
    nil,
    GetIncrementResponse.new,
    GetIncrementResponse.new
  ]
)
```

