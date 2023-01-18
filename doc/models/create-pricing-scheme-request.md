
# Create Pricing Scheme Request

Request for creating a pricing scheme

## Structure

`CreatePricingSchemeRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `scheme_type` | `String` | Required | Scheme type |
| `price_brackets` | [`Array<CreatePriceBracketRequest>`](../../doc/models/create-price-bracket-request.md) | Optional | Price brackets |
| `price` | `Integer` | Optional | Price |
| `minimum_price` | `Integer` | Optional | Minimum price |
| `percentage` | `Float` | Optional | percentual value used in pricing_scheme Percent |

## Example (as JSON)

```json
{
  "scheme_type": "scheme_type0",
  "price_brackets": null,
  "price": null,
  "minimum_price": null,
  "percentage": null
}
```

