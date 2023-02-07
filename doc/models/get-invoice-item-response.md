
# Get Invoice Item Response

Response object for getting an invoice item

## Structure

`GetInvoiceItemResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Optional | - |
| `description` | `String` | Optional | - |
| `pricing_scheme` | [`GetPricingSchemeResponse`](../../doc/models/get-pricing-scheme-response.md) | Optional | - |
| `price_bracket` | [`GetPriceBracketResponse`](../../doc/models/get-price-bracket-response.md) | Optional | - |
| `quantity` | `Integer` | Optional | - |
| `name` | `String` | Optional | - |
| `subscription_item_id` | `String` | Optional | Subscription Item Id |

## Example (as JSON)

```json
{
  "amount": null,
  "description": null,
  "pricing_scheme": null,
  "price_bracket": null,
  "quantity": null,
  "name": null,
  "subscription_item_id": null
}
```

