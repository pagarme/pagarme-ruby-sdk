
# List Invoices Response

Response object for listing invoices

## Structure

`ListInvoicesResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `data` | [`Array[GetInvoiceResponse]`](../../doc/models/get-invoice-response.md) | Optional | The Invoice objects |
| `paging` | [`PagingResponse`](../../doc/models/paging-response.md) | Optional | Paging object |

## Example

```ruby
list_invoices_response = ListInvoicesResponse.new(
  [
    nil
  ]
)
```

