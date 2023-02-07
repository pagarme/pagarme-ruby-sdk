
# Get Pricing Scheme Response

Response object for getting a pricing scheme

## Structure

`GetPricingSchemeResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `price` | `Integer` | Optional | - |
| `scheme_type` | `String` | Optional | - |
| `price_brackets` | [`Array<GetPriceBracketResponse>`](../../doc/models/get-price-bracket-response.md) | Optional | - |
| `minimum_price` | `Integer` | Optional | - |
| `percentage` | `Float` | Optional | percentual value used in pricing_scheme Percent |

## Example (as JSON)

```json
{
  "price": null,
  "scheme_type": null,
  "price_brackets": null,
  "minimum_price": null,
  "percentage": null
}
```

