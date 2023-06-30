
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

## Example (as JSON)

```json
{
  "object": "transfer",
  "id": "id6",
  "status": "status2",
  "amount": "amount8",
  "created_at": "created_at4",
  "source_type": "source_type0",
  "source_id": "source_id6",
  "target_type": "target_type2",
  "target_id": "target_id0",
  "fee": "fee2"
}
```

