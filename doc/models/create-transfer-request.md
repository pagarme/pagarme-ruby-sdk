
# Create Transfer Request

Request for creating a transfer

## Structure

`CreateTransferRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Required | Transfer amount |
| `metadata` | `Hash[String, String]` | Required | Metadata |

## Example

```ruby
create_transfer_request = CreateTransferRequest.new(
  224,
  {
    'key0': 'metadata3'
  }
)
```

