
# Create Register Information Individual Request

## Structure

`CreateRegisterInformationIndividualRequest`

## Inherits From

[`CreateRegisterInformationBaseRequest`](../../doc/models/create-register-information-base-request.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `mother_name` | `String` | Optional | - |
| `birthdate` | `String` | Required | - |
| `monthly_income` | `Integer` | Required | - |
| `professional_occupation` | `String` | Required | - |
| `address` | [`CreateRegisterInformationAddressRequest`](../../doc/models/create-register-information-address-request.md) | Required | - |

## Example

```ruby
create_register_information_individual_request = CreateRegisterInformationIndividualRequest.new(
  'name6',
  'birthdate0',
  196,
  'professional_occupation0',
  CreateRegisterInformationAddressRequest.new,
  'email4',
  'document6',
  'type8',
  [
    nil,
    CreateRegisterInformationPhoneRequest.new
  ],
  'mother_name2',
  'site_url4'
)
```

