
# Get Register Information Response

Response object for getting an RegisterInformationResponse

## Structure

`GetRegisterInformationResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `email` | `String` | Optional | - |
| `document` | `String` | Optional | - |
| `type` | `String` | Optional | - |
| `site_url` | `String` | Optional | - |
| `phone_numbers` | [`Array[GetPhoneNumberResponse]`](../../doc/models/get-phone-number-response.md) | Optional | - |
| `name` | `String` | Optional | - |
| `mother_name` | `String` | Optional | - |
| `birthdate` | `String` | Optional | - |
| `monthly_income` | `String` | Optional | - |
| `professional_occupation` | `String` | Optional | - |
| `address` | [`GetRegisterInformationAddressResponse`](../../doc/models/get-register-information-address-response.md) | Optional | - |
| `company_name` | `String` | Optional | - |
| `trading_name` | `String` | Optional | - |
| `annual_revenue` | `String` | Optional | - |
| `corporation_type` | `String` | Optional | - |
| `founding_date` | `String` | Optional | - |
| `cnae` | `String` | Optional | - |
| `main_address` | [`GetRegisterInformationAddressResponse`](../../doc/models/get-register-information-address-response.md) | Optional | - |
| `managing_partners` | [`Array[GetManagingPartnerResponse]`](../../doc/models/get-managing-partner-response.md) | Optional | - |

## Example

```ruby
get_register_information_response = GetRegisterInformationResponse.new(
  'email4',
  'document6',
  'type2',
  'site_url4',
  [
    nil,
    GetPhoneNumberResponse.new
  ]
)
```

