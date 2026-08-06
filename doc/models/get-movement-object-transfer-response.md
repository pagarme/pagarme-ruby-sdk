
# Get Movement Object Transfer Response

## Structure

`GetMovementObjectTransferResponse`

## Inherits From

[`GetMovementObjectBaseResponse`](../../doc/models/get-movement-object-base-response.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `source_type` | `String` | Optional | - |
| `source_id` | `String` | Optional | - |
| `target_type` | `String` | Optional | - |
| `target_id` | `String` | Optional | - |
| `fee` | `String` | Optional | - |
| `funding_date` | `String` | Optional | - |
| `funding_estimated_date` | `String` | Optional | - |
| `bank_account` | `String` | Optional | - |

## Example

```ruby
get_movement_object_transfer_response = GetMovementObjectTransferResponse.new(
  'source_type0',
  'source_id4',
  'target_type2',
  'target_id0',
  'fee2',
  nil,
  nil,
  nil,
  nil,
  'id2',
  'status4',
  'amount4',
  'created_at0'
)
```

