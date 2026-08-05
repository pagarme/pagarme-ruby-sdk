
# Get Movement Object Fee Collection Response

Generic response object for getting a MovementObjectFeeCollection.

## Structure

`GetMovementObjectFeeCollectionResponse`

## Inherits From

[`GetMovementObjectBaseResponse`](../../doc/models/get-movement-object-base-response.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `description` | `String` | Optional | - |
| `payment_date` | `String` | Optional | - |
| `recipient_id` | `String` | Optional | - |

## Example

```ruby
get_movement_object_fee_collection_response = GetMovementObjectFeeCollectionResponse.new(
  'description4',
  'payment_date4',
  'recipient_id6',
  nil,
  'id2',
  'status4',
  'amount4',
  'created_at0'
)
```

