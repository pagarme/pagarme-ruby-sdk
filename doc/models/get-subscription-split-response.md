
# Get Subscription Split Response

## Structure

`GetSubscriptionSplitResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Defines if the split is enabled |
| `rules` | [`Array[GetSplitResponse]`](../../doc/models/get-split-response.md) | Optional | Split |

## Example

```ruby
get_subscription_split_response = GetSubscriptionSplitResponse.new(
  false,
  [
    nil
  ]
)
```

