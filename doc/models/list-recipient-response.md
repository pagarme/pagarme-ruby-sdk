
# List Recipient Response

Response for the listing recipient method

## Structure

`ListRecipientResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `data` | [`Array[GetRecipientResponse]`](../../doc/models/get-recipient-response.md) | Optional | Recipients |
| `paging` | [`PagingResponse`](../../doc/models/paging-response.md) | Optional | Paging |

## Example

```ruby
list_recipient_response = ListRecipientResponse.new(
  [
    nil
  ]
)
```

