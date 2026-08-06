
# List Addresses Response

Response object for listing addresses

## Structure

`ListAddressesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `data` | [`Array[GetAddressResponse]`](../../doc/models/get-address-response.md) | Optional | The address objects |
| `paging` | [`PagingResponse`](../../doc/models/paging-response.md) | Optional | Paging object |

## Example

```ruby
list_addresses_response = ListAddressesResponse.new(
  [
    nil,
    GetAddressResponse.new,
    GetAddressResponse.new
  ]
)
```

