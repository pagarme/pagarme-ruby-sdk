
# Create Register Information Phone Request

Register Information Phone

## Structure

`CreateRegisterInformationPhoneRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ddd` | `String` | Required | - |
| `number` | `String` | Required | - |
| `type` | `String` | Required | - |

## Example

```ruby
create_register_information_phone_request = CreateRegisterInformationPhoneRequest.new(
  'ddd4',
  'number2',
  'type0'
)
```

