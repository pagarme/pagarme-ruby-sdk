
# Create Transfer

## Structure

`CreateTransfer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Required | - |
| `source_id` | `String` | Required | - |
| `target_id` | `String` | Required | - |
| `metadata` | `Array[String]` | Optional | - |

## Example

```ruby
create_transfer = CreateTransfer.new(
  202,
  'source_id2',
  'target_id8',
  [
    'metadata5'
  ]
)
```

