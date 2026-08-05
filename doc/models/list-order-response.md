
# List Order Response

Response object for listing order objects

## Structure

`ListOrderResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `data` | [`Array[GetOrderResponse]`](../../doc/models/get-order-response.md) | Optional | The order object |
| `paging` | [`PagingResponse`](../../doc/models/paging-response.md) | Optional | Paging object |

## Example

```ruby
list_order_response = ListOrderResponse.new(
  [
    nil
  ]
)
```

