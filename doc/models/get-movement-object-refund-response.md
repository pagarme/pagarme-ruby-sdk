
# Get Movement Object Refund Response

Generic response object for getting a MovementObjectRefund.

## Structure

`GetMovementObjectRefundResponse`

## Inherits From

[`GetMovementObjectBaseResponse`](../../doc/models/get-movement-object-base-response.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `fraud_coverage_fee` | `String` | Optional | - |
| `charge_fee_recipient_id` | `String` | Optional | - |
| `bank_account_id` | `String` | Optional | - |
| `local_transaction_id` | `String` | Optional | - |
| `updated_at` | `String` | Optional | - |

## Example

```ruby
get_movement_object_refund_response = GetMovementObjectRefundResponse.new(
  'fraud_coverage_fee8',
  'charge_fee_recipient_id4',
  'bank_account_id0',
  'local_transaction_id6',
  'updated_at6',
  nil,
  'id2',
  'status4',
  'amount4',
  'created_at0'
)
```

