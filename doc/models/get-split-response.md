
# Get Split Response

Split response

## Structure

`GetSplitResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | `String` | Optional | Type |
| `amount` | `Integer` | Optional | Amount |
| `recipient` | [`GetRecipientResponse`](../../doc/models/get-recipient-response.md) | Optional | Recipient |
| `gateway_id` | `String` | Optional | The split rule gateway id |
| `options` | [`GetSplitOptionsResponse`](../../doc/models/get-split-options-response.md) | Optional | - |
| `id` | `String` | Optional | - |

## Example

```ruby
get_split_response = GetSplitResponse.new(
  'type4',
  192,
  nil,
  'gateway_id4'
)
```

