
# Create Antifraud Request

## Structure

`CreateAntifraudRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | `String` | Required | - |
| `clearsale` | [`CreateClearSaleRequest`](../../doc/models/create-clear-sale-request.md) | Required | - |

## Example

```ruby
create_antifraud_request = CreateAntifraudRequest.new(
  'type8',
  CreateClearSaleRequest.new
)
```

