
# Get Register Information Address Response

Response object for getting an RegisterInformationAddress

## Structure

`GetRegisterInformationAddressResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `street` | `String` | Optional | - |
| `complementary` | `String` | Optional | - |
| `street_number` | `String` | Optional | - |
| `neighborhood` | `String` | Optional | - |
| `city` | `String` | Optional | - |
| `state` | `String` | Optional | - |
| `zip_code` | `String` | Optional | - |
| `reference_point` | `String` | Optional | - |

## Example

```ruby
get_register_information_address_response = GetRegisterInformationAddressResponse.new(
  'street2',
  'complementary4',
  'street_number2',
  'neighborhood8',
  'city8'
)
```

