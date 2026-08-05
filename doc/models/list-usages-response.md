
# List Usages Response

Response model for listing the usages from a subscription item

## Structure

`ListUsagesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `data` | [`Array[GetUsageResponse]`](../../doc/models/get-usage-response.md) | Optional | The usage objects |
| `paging` | [`PagingResponse`](../../doc/models/paging-response.md) | Optional | Paging object |

## Example

```ruby
list_usages_response = ListUsagesResponse.new(
  [
    nil,
    GetUsageResponse.new,
    GetUsageResponse.new
  ]
)
```

