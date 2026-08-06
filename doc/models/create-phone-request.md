
# Create Phone Request

## Structure

`CreatePhoneRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `country_code` | `String` | Optional | - |
| `number` | `String` | Optional | - |
| `area_code` | `String` | Optional | - |
| `type` | `String` | Optional | - |

## Example

```ruby
create_phone_request = CreatePhoneRequest.new(
  'country_code4',
  'number2',
  'area_code4',
  'Type4'
)
```

