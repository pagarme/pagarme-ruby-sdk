
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

## Example (as JSON)

```json
{
  "object": "payable",
  "id": "id0",
  "status": "status2",
  "amount": "amount2",
  "created_at": "created_at8",
  "fee": "fee2",
  "anticipation_fee": "anticipation_fee8",
  "fraud_coverage_fee": "fraud_coverage_fee2",
  "installment": "installment8",
  "split_id": "split_id2",
  "bulk_anticipation_id": "bulk_anticipation_id4",
  "anticipation_id": "anticipation_id0",
  "recipient_id": "recipient_id0",
  "originator_model": "originator_model4",
  "originator_model_id": "originator_model_id4",
  "payment_date": "payment_date8",
  "original_payment_date": "original_payment_date8",
  "payment_method": "payment_method0",
  "accrual_at": "accrual_at8",
  "liquidation_arrangement_id": "liquidation_arrangement_id6"
}
```

