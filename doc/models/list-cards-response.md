
# List Cards Response

Response object for listing cards

## Structure

`ListCardsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `data` | [`Array[GetCardResponse]`](../../doc/models/get-card-response.md) | Optional | The card objects |
| `paging` | [`PagingResponse`](../../doc/models/paging-response.md) | Optional | Paging object |

## Example

```ruby
list_cards_response = ListCardsResponse.new(
  [
    nil,
    GetCardResponse.new,
    GetCardResponse.new
  ]
)
```

