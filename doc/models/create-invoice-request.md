
# Create Invoice Request

Request for creating a new Invoice

## Structure

`CreateInvoiceRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `metadata` | `Hash[String, String]` | Required | Metadata |

## Example

```ruby
create_invoice_request = CreateInvoiceRequest.new(
  {
    'key0': 'metadata9'
  }
)
```

