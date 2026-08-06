
# List Customers Response

Response for listing the customers

## Structure

`ListCustomersResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `data` | [`Array[GetCustomerResponse]`](../../doc/models/get-customer-response.md) | Optional | The customer object |
| `paging` | [`PagingResponse`](../../doc/models/paging-response.md) | Optional | Paging object |

## Example

```ruby
list_customers_response = ListCustomersResponse.new(
  [
    nil
  ]
)
```

