
# Get Payable Response

Response object for getting an payable

## Structure

`GetPayableResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `Integer` | Optional | - |
| `status` | `String` | Optional | - |
| `amount` | `Integer` | Optional | - |
| `fee` | `Integer` | Optional | - |
| `anticipation_fee` | `Integer` | Optional | - |
| `fraud_coverage_fee` | `Integer` | Optional | - |
| `installment` | `Integer` | Optional | - |
| `gateway_id` | `Integer` | Optional | - |
| `charge_id` | `String` | Optional | - |
| `split_id` | `String` | Optional | - |
| `bulk_anticipation_id` | `String` | Optional | - |
| `anticipation_id` | `String` | Optional | - |
| `recipient_id` | `String` | Optional | - |
| `originator_model` | `String` | Optional | - |
| `originator_model_id` | `String` | Optional | - |
| `payment_date` | `DateTime` | Optional | - |
| `original_payment_date` | `DateTime` | Optional | - |
| `type` | `String` | Optional | - |
| `payment_method` | `String` | Optional | - |
| `accrual_at` | `DateTime` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `liquidation_arrangement_id` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "id": 112,
  "status": "status8",
  "amount": 46,
  "fee": 168,
  "anticipation_fee": 140
}
```

