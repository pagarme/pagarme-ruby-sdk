
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

## Example (as JSON)

```json
{
  "id": "id2",
  "status": "status4",
  "amount": "amount4",
  "created_at": "created_at0",
  "fraud_coverage_fee": "fraud_coverage_fee0",
  "charge_fee_recipient_id": "charge_fee_recipient_id2",
  "bank_account_id": "bank_account_id2",
  "local_transaction_id": "local_transaction_id8",
  "updated_at": "updated_at8"
}
```

