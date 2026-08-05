
# Create Checkout Card Installment Option Request

Options for card installment

## Structure

`CreateCheckoutCardInstallmentOptionRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `number` | `Integer` | Required | Installment quantity |
| `total` | `Integer` | Required | Total amount |

## Example

```ruby
create_checkout_card_installment_option_request = CreateCheckoutCardInstallmentOptionRequest.new(
  170,
  22
)
```

