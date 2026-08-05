
# Get Transfer Settings Response

## Structure

`GetTransferSettingsResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transfer_enabled` | `TrueClass \| FalseClass` | Optional | - |
| `transfer_interval` | `String` | Optional | - |
| `transfer_day` | `Integer` | Optional | - |

## Example

```ruby
get_transfer_settings_response = GetTransferSettingsResponse.new(
  false,
  'transfer_interval6',
  130
)
```

