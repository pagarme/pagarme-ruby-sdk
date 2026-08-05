
# Get Automatic Anticipation Response

## Structure

`GetAutomaticAnticipationResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | - |
| `type` | `String` | Optional | - |
| `volume_percentage` | `Integer` | Optional | - |
| `delay` | `Integer` | Optional | - |
| `days` | `Array[Integer]` | Optional | - |

## Example

```ruby
get_automatic_anticipation_response = GetAutomaticAnticipationResponse.new(
  false,
  'type0',
  114,
  176,
  [
    152,
    153,
    154
  ]
)
```

