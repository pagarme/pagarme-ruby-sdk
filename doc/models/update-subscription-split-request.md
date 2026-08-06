
# Update Subscription Split Request

## Structure

`UpdateSubscriptionSplitRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Required | Defines if the split is enabled |
| `rules` | [`Array[CreateSplitRequest]`](../../doc/models/create-split-request.md) | Required | Split |

## Example

```ruby
update_subscription_split_request = UpdateSubscriptionSplitRequest.new(
  nil,
  [
    nil
  ]
)
```

