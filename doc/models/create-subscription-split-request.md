
# Create Subscription Split Request

## Structure

`CreateSubscriptionSplitRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Required | Defines if the split is enabled |
| `rules` | [`Array[CreateSplitRequest]`](../../doc/models/create-split-request.md) | Required | Split |

## Example

```ruby
create_subscription_split_request = CreateSubscriptionSplitRequest.new(
  nil,
  [
    nil
  ]
)
```

