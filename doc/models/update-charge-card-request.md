
# Update Charge Card Request

Request for updating card data

## Structure

`UpdateChargeCardRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `update_subscription` | `TrueClass \| FalseClass` | Required | Indicates if the subscriptions using this card must also be updated |
| `card_id` | `String` | Required | Card id |
| `card` | [`CreateCardRequest`](../../doc/models/create-card-request.md) | Required | Card data |
| `recurrence` | `TrueClass \| FalseClass` | Required | Indicates a recurrence |
| `initiated_type` | `String` | Optional | - |
| `recurrence_model` | `String` | Optional | - |
| `payment_origin` | [`CreatePaymentOriginRequest`](../../doc/models/create-payment-origin-request.md) | Optional | - |
| `indirect_acceptor` | `String` | Optional | Business model identifier |

## Example

```ruby
update_charge_card_request = UpdateChargeCardRequest.new(
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
  nil,
  'initiated_type0',
  'recurrence_model8',
  nil,
  'indirect_acceptor4'
)
```

