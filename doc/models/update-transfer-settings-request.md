
# Update Transfer Settings Request

## Structure

`UpdateTransferSettingsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transfer_enabled` | `String` | Required | - |
| `transfer_interval` | `String` | Required | - |
| `transfer_day` | `String` | Required | - |

## Example

```ruby
update_transfer_settings_request = UpdateTransferSettingsRequest.new(
  'transfer_enabled4',
  'transfer_interval8',
  'transfer_day8'
)
```

