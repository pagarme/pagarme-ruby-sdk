
# Update Price Bracket Request

Request for updating a price bracket

## Structure

`UpdatePriceBracketRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `start_quantity` | `Integer` | Required | Start quantity of the bracket |
| `price` | `Integer` | Required | Price |
| `end_quantity` | `Integer` | Optional | End quantity of the bracket |
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

