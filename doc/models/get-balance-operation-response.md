
# Get Balance Operation Response

Generic response object for getting a BalanceOperation.

## Structure

`GetBalanceOperationResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `status` | `String` | Optional | - |
| `balance_amount` | `String` | Optional | - |
| `balance_old_amount` | `String` | Optional | - |
| `type` | `String` | Optional | - |
| `amount` | `Integer` | Optional | - |
| `fee` | `String` | Optional | - |
| `created_at` | `String` | Optional | - |
| `movement_object` | [`GetMovementObjectBaseResponse`](../../doc/models/get-movement-object-base-response.md) | Optional | - |

## Example (as JSON)

```json
{
  "id": "id0",
  "status": "status2",
  "balance_amount": "balance_amount0",
  "balance_old_amount": "balance_old_amount8",
  "type": "type0"
}
```

