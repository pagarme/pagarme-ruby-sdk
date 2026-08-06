
# Get Movement Object Payable Response

## Structure

`GetMovementObjectPayableResponse`

## Inherits From

[`GetMovementObjectBaseResponse`](../../doc/models/get-movement-object-base-response.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `fee` | `String` | Optional | - |
| `anticipation_fee` | `String` | Required | - |
| `fraud_coverage_fee` | `String` | Required | - |
| `installment` | `String` | Required | - |
| `split_id` | `String` | Required | - |
| `bulk_anticipation_id` | `String` | Required | - |
| `anticipation_id` | `String` | Required | - |
| `recipient_id` | `String` | Required | - |
| `originator_model` | `String` | Required | - |
| `originator_model_id` | `String` | Required | - |
| `payment_date` | `String` | Required | - |
| `original_payment_date` | `String` | Required | - |
| `payment_method` | `String` | Required | - |
| `accrual_at` | `String` | Required | - |
| `liquidation_arrangement_id` | `String` | Required | - |

## Example

```ruby
get_movement_object_payable_response = GetMovementObjectPayableResponse.new(
  'anticipation_fee0',
  'fraud_coverage_fee4',
  'installment6',
  'split_id0',
  'bulk_anticipation_id6',
  'anticipation_id2',
  'recipient_id2',
  'originator_model4',
  'originator_model_id4',
  'payment_date0',
  'original_payment_date0',
  'payment_method2',
  'accrual_at0',
  'liquidation_arrangement_id8',
  'fee0',
  nil,
  'id2',
  'status4',
  'amount4',
  'created_at0'
)
```

