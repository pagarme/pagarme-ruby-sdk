
# Update Subscription Card Request

Request for updating the card from a subscription

## Structure

`UpdateSubscriptionCardRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card` | [`CreateCardRequest`](../../doc/models/create-card-request.md) | Required | Credit card data |
| `card_id` | `String` | Required | Credit card id |
| `indirect_acceptor` | `String` | Optional | Business model identifier |

## Example

```ruby
update_subscription_card_request = UpdateSubscriptionCardRequest.new(
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
  'indirect_acceptor4'
)
```

