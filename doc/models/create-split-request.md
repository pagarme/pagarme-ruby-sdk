
# Create Split Request

Split

## Structure

`CreateSplitRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | `String` | Required | Split type |
| `amount` | `Integer` | Required | Amount |
| `recipient_id` | `String` | Required | Recipient id |
| `options` | [`CreateSplitOptionsRequest`](../../doc/models/create-split-options-request.md) | Optional | The split options request |
| `split_rule_id` | `String` | Optional | Rule code used in cancellation. |

## Example

```ruby
create_split_request = CreateSplitRequest.new(
  'type8',
  206,
  'recipient_id8',
  nil,
  'split_rule_id4'
)
```

