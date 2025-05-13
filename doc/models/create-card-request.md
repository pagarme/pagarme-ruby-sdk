
# Create Card Request

Card data

## Structure

`CreateCardRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `number` | `String` | Optional | Credit card number |
| `holder_name` | `String` | Optional | Holder name, as written on the card |
| `exp_month` | `Integer` | Optional | The expiration month |
| `exp_year` | `Integer` | Optional | The expiration year, that can be informed with 2 or 4 digits |
| `cvv` | `String` | Optional | The card's security code |
| `billing_address` | [`CreateAddressRequest`](../../doc/models/create-address-request.md) | Optional | Card's billing address |
| `brand` | `String` | Optional | Card brand |
| `billing_address_id` | `String` | Optional | The address id for the billing address |
| `metadata` | `Hash[String, String]` | Optional | Metadata |
| `type` | `String` | Optional | Card type<br><br>**Default**: `'credit'` |
| `options` | [`CreateCardOptionsRequest`](../../doc/models/create-card-options-request.md) | Optional | Options for creating the card |
| `holder_document` | `String` | Optional | Document number for the card's holder |
| `private_label` | `TrueClass \| FalseClass` | Optional | Indicates whether it is a private label card |
| `label` | `String` | Optional | - |
| `id` | `String` | Optional | Identifier |
| `token` | `String` | Optional | token identifier |

## Example (as JSON)

```json
{
  "type": "credit",
  "number": "number0",
  "holder_name": "holder_name8",
  "exp_month": 92,
  "exp_year": 204,
  "cvv": "cvv0"
}
```

