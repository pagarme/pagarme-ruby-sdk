
# Get Price Bracket Response

Response object for getting a price bracket

## Structure

`GetPriceBracketResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `start_quantity` | `Integer` | Optional | - |
| `price` | `Integer` | Optional | - |
| `end_quantity` | `Integer` | Optional | - |
| `overage_price` | `Integer` | Optional | - |

## Example

```ruby
get_price_bracket_response = GetPriceBracketResponse.new(
  206,
  112,
  214,
  228
)
```

