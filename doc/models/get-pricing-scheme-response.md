
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
  "price": 182,
  "scheme_type": "scheme_type8",
  "price_brackets": [
    {
      "start_quantity": 144,
      "price": 174,
      "end_quantity": 152,
      "overage_price": 166
    }
  ],
  "minimum_price": 170,
  "percentage": 166.36
}
```

