
# Get Transfer

## Structure

`GetTransfer`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Required | - |
| `gateway_id` | `String` | Required | - |
| `amount` | `Integer` | Required | - |
| `status` | `String` | Required | - |
| `created_at` | `DateTime` | Required | - |
| `updated_at` | `DateTime` | Required | - |
| `metadata` | `Hash[String, String]` | Optional | - |
| `fee` | `Integer` | Optional | - |
| `funding_date` | `DateTime` | Optional | - |
| `funding_estimated_date` | `DateTime` | Optional | - |
| `type` | `String` | Required | - |
| `source` | [`GetTransferSourceResponse`](../../doc/models/get-transfer-source-response.md) | Required | - |
| `target` | [`GetTransferTargetResponse`](../../doc/models/get-transfer-target-response.md) | Required | - |

## Example (as JSON)

```json
{
  "id": "id8",
  "gateway_id": "gateway_id8",
  "amount": 122,
  "status": "status0",
  "created_at": "2016-03-13T12:52:32.123Z",
  "updated_at": "2016-03-13T12:52:32.123Z",
  "metadata": {
    "key0": "metadata5"
  },
  "fee": 80,
  "funding_date": "2016-03-13T12:52:32.123Z",
  "funding_estimated_date": "2016-03-13T12:52:32.123Z",
  "type": "type8",
  "source": {
    "source_id": "source_id8",
    "type": "type6"
  },
  "target": {
    "target_id": "target_id2",
    "type": "type8"
  }
}
```

