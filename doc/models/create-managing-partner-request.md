
# Create Managing Partner Request

Managing Partner Request

## Structure

`CreateManagingPartnerRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | - |
| `email` | `String` | Required | - |
| `document` | `String` | Required | - |
| `mother_name` | `String` | Optional | - |
| `birthdate` | `String` | Required | - |
| `monthly_income` | `Integer` | Required | - |
| `professional_occupation` | `String` | Required | - |
| `self_declared_legal_representative` | `TrueClass \| FalseClass` | Required | - |
| `address` | [`CreateRegisterInformationAddressRequest`](../../doc/models/create-register-information-address-request.md) | Required | - |
| `phone_numbers` | [`Array[CreateRegisterInformationPhoneRequest]`](../../doc/models/create-register-information-phone-request.md) | Required | - |

## Example

```ruby
create_managing_partner_request = CreateManagingPartnerRequest.new(
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  nil,
  CreateRegisterInformationAddressRequest.new,
  [
    nil
  ],
  'mother_name2'
)
```

