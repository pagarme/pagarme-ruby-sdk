
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

## Example

```ruby
create_card_token_request = CreateCardTokenRequest.new(
  'number2',
  'holder_name6',
  186,
  110,
  'cvv8',
  'brand4',
  'label0'
)
```

