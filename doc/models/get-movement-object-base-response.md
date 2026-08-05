
# Get Movement Object Base Response

Generic response object for getting a MovementObjectBase.

## Structure

`GetMovementObjectBaseResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `object` | `String` | Optional | - |
| `id` | `String` | Optional | - |
| `status` | `String` | Optional | - |
| `amount` | `String` | Optional | - |
| `created_at` | `String` | Optional | - |
| `type` | `String` | Optional | - |
| `charge_id` | `String` | Optional | - |
| `gateway_id` | `String` | Optional | - |

## Example

```ruby
get_movement_object_base_response = GetMovementObjectSettlementResponse.new(
  'product2',
  'brand6',
  'payment_date4',
  'recipient_id2',
  'document_type0',
  nil,
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

