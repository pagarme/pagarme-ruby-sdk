
# Create Increment Request

Request for creating a new increment

## Structure

`CreateIncrementRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `value` | `Float` | Required | The increment value |
| `increment_type` | `String` | Required | Increment type. Can be either flat or percentage. |
| `item_id` | `String` | Required | The item where the increment will be applied |
| `cycles` | `Integer` | Optional | Number of cycles that the increment will be applied |
| `description` | `String` | Optional | Description |

## Example

```ruby
create_increment_request = CreateIncrementRequest.new(
  77.56,
  'increment_type6',
  'item_id6',
  156,
  'description6'
)
```

