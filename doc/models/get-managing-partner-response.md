
# Get Managing Partner Response

Response object for getting an ManagingPartnerResponse

## Structure

`GetManagingPartnerResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Optional | - |
| `email` | `String` | Optional | - |
| `document` | `String` | Optional | - |
| `type` | `String` | Optional | - |
| `mother_name` | `String` | Optional | - |
| `birthdate` | `String` | Optional | - |
| `monthly_income` | `String` | Optional | - |
| `professional_occupation` | `String` | Optional | - |
| `self_declared_representative` | `TrueClass \| FalseClass` | Optional | - |
| `address` | [`GetRegisterInformationAddressResponse`](../../doc/models/get-register-information-address-response.md) | Optional | - |
| `phone_numbers` | [`Array<GetPhoneNumberResponse>`](../../doc/models/get-phone-number-response.md) | Optional | - |

## Example (as JSON)

```json
{
  "name": "name0",
  "email": "email6",
  "document": "document6",
  "type": "type0",
  "mother_name": "mother_name6"
}
```

