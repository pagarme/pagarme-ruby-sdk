
# Update Pricing Scheme Request

Request for updating a pricing scheme

## Structure

`UpdatePricingSchemeRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `scheme_type` | `String` | Required | Scheme type |
| `price_brackets` | [`Array<UpdatePriceBracketRequest>`](../../doc/models/update-price-bracket-request.md) | Required | Price brackets |
| `price` | `Integer` | Optional | Price |
| `minimum_price` | `Integer` | Optional | Minimum price |
| `percentage` | `Float` | Optional | percentual value used in pricing_scheme Percent |

## Example (as JSON)

```json
{
  "scheme_type": "scheme_type0",
  "price_brackets": [
    {
      "start_quantity": 144,
      "price": 174,
      "end_quantity": 152,
      "overage_price": 166
    }
  ],
  "price": 162,
  "minimum_price": 2,
  "percentage": 62.28
}
```

