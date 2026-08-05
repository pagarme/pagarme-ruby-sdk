
# Update Subscription Payment Method Request

Request for updating a subscription's payment method

## Structure

`UpdateSubscriptionPaymentMethodRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_method` | `String` | Required | The new payment method |
| `card_id` | `String` | Required | Card id |
| `card` | [`CreateCardRequest`](../../doc/models/create-card-request.md) | Required | Card data |
| `card_token` | `String` | Optional | The Card Token |
| `boleto` | [`CreateSubscriptionBoletoRequest`](../../doc/models/create-subscription-boleto-request.md) | Optional | Information about fines and interest on the "boleto" used from payment |
| `indirect_acceptor` | `String` | Optional | Business model identifier |

## Example

```ruby
update_subscription_payment_method_request = UpdateSubscriptionPaymentMethodRequest.new(
  nil,
  nil,
  CreateCardRequest.new(
    'number6',
    'holder_name2',
    228,
    68,
    'cvv4',
    nil,
    nil,
    nil,
    {},
    'credit'
  ),
  'card_token8',
  nil,
  'indirect_acceptor8'
)
```

