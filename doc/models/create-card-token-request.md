
# Create Card Token Request

Card token data

## Structure

`CreateCardTokenRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `number` | `String` | Required | Credit card number |
| `holder_name` | `String` | Required | Holder name, as written on the card |
| `exp_month` | `Integer` | Required | The expiration month |
| `exp_year` | `Integer` | Required | The expiration year, that can be informed with 2 or 4 digits |
| `cvv` | `String` | Required | The card's security code |
| `brand` | `String` | Required | Card brand |
| `label` | `String` | Required | - |

## Example (as JSON)

```json
{
  "number": "number8",
  "holder_name": "holder_name6",
  "exp_month": 168,
  "exp_year": 208,
  "cvv": "cvv8",
  "brand": "brand4",
  "label": "label0"
}
```

