
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

## Example

```ruby
get_transfer = GetTransfer.new(
  'id4',
  'gateway_id6',
  172,
  'status4',
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  'type6',
  GetTransferSourceResponse.new,
  GetTransferTargetResponse.new,
  {
    'key0': 'metadata9',
    'key1': 'metadata0',
    'key2': 'metadata1'
  },
  130,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

