
# Create Register Information Corporation Request

## Structure

`CreateRegisterInformationCorporationRequest`

## Inherits From

[`CreateRegisterInformationBaseRequest`](../../doc/models/create-register-information-base-request.md)

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `company_name` | `String` | Required | - |
| `trading_name` | `String` | Required | - |
| `annual_revenue` | `Integer` | Required | - |
| `corporation_type` | `String` | Optional | - |
| `founding_date` | `String` | Optional | - |
| `cnae` | `String` | Optional | - |
| `managing_partners` | [`Array[CreateManagingPartnerRequest]`](../../doc/models/create-managing-partner-request.md) | Required | - |
| `main_address` | [`CreateRegisterInformationAddressRequest`](../../doc/models/create-register-information-address-request.md) | Required | - |

## Example

```ruby
create_register_information_corporation_request = CreateRegisterInformationCorporationRequest.new(
  nil,
  nil,
  nil,
  [
    CreateManagingPartnerRequest.new(
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
      'mother_name0'
    )
  ],
  CreateRegisterInformationAddressRequest.new,
  nil,
  nil,
  nil,
  [
    nil
  ],
  'corporation_type4',
  'founding_date4',
  'cnae4',
  'site_url4'
)
```

