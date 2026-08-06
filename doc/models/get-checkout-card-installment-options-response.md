
# Get Checkout Card Installment Options Response

## Structure

`GetCheckoutCardInstallmentOptionsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `number` | `Integer` | Required | Número de parcelas |
| `total` | `Integer` | Required | Valor total da compra |

## Example

```ruby
get_checkout_card_installment_options_response = GetCheckoutCardInstallmentOptionsResponse.new(
  76,
  184
)
```

