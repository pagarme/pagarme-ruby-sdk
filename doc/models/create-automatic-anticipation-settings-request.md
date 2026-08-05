
# Create Automatic Anticipation Settings Request

## Structure

`CreateAutomaticAnticipationSettingsRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Required | - |
| `type` | `String` | Required | - |
| `volume_percentage` | `Integer` | Required | - |
| `delay` | `Integer` | Required | - |
| `days` | `Array[Integer]` | Required | - |

## Example

```ruby
create_automatic_anticipation_settings_request = CreateAutomaticAnticipationSettingsRequest.new(
  false,
  'type8',
  194,
  96,
  [
    72,
    73
  ]
)
```

