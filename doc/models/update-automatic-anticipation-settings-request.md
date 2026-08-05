
# Update Automatic Anticipation Settings Request

## Structure

`UpdateAutomaticAnticipationSettingsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | - |
| `type` | `String` | Optional | - |
| `volume_percentage` | `Integer` | Optional | - |
| `delay` | `Integer` | Optional | - |
| `days` | `Integer` | Optional | - |

## Example

```ruby
update_automatic_anticipation_settings_request = UpdateAutomaticAnticipationSettingsRequest.new(
  false,
  'type2',
  146,
  144,
  52
)
```

