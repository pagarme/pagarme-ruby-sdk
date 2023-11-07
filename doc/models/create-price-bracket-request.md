
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

## Example (as JSON)

```json
{
  "start_quantity": 154,
  "price": 164,
  "end_quantity": 162,
  "overage_price": 176
}
```

