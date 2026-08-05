
# Create Transfer Settings Request

Informações de transferência do recebedor

## Structure

`CreateTransferSettingsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transfer_enabled` | `TrueClass \| FalseClass` | Required | - |
| `transfer_interval` | `String` | Required | - |
| `transfer_day` | `Integer` | Required | - |

## Example

```ruby
create_transfer_settings_request = CreateTransferSettingsRequest.new(
  false,
  'transfer_interval2',
  114
)
```

