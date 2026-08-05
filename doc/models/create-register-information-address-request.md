
# Create Register Information Address Request

Register Information Address

## Structure

`CreateRegisterInformationAddressRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `street` | `String` | Required | - |
| `complementary` | `String` | Required | - |
| `street_number` | `String` | Required | - |
| `neighborhood` | `String` | Required | - |
| `city` | `String` | Required | - |
| `state` | `String` | Required | - |
| `zip_code` | `String` | Required | - |
| `reference_point` | `String` | Required | - |

## Example

```ruby
create_register_information_address_request = CreateRegisterInformationAddressRequest.new(
  'street6',
  'complementary8',
  'street_number6',
  'neighborhood2',
  'city6',
  'state2',
  'zip_code0',
  'reference_point0'
)
```

