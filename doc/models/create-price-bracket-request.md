
# Create Price Bracket Request

Request for creating a price bracket

## Structure

`CreatePriceBracketRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `start_quantity` | `Integer` | Required | Start quantity |
| `price` | `Integer` | Required | Price |
| `end_quantity` | `Integer` | Optional | End quantity |
| `overage_price` | `Integer` | Optional | Overage price |

## Example

```ruby
create_price_bracket_request = CreatePriceBracketRequest.new(
  216,
  102,
  224,
  238
)
```

