
# Create Register Information Base Request

Request object for RegisterInformation.

## Structure

`CreateRegisterInformationBaseRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `email` | `String` | Required | - |
| `document` | `String` | Required | - |
| `type` | `String` | Required | "individual" ou "corporation" |
| `site_url` | `String` | Optional | - |
| `phone_numbers` | [`Array[CreateRegisterInformationPhoneRequest]`](../../doc/models/create-register-information-phone-request.md) | Required | - |

## Example

```ruby
create_register_information_base_request = CreateRegisterInformationBaseRequest.new(
  nil,
  nil,
  nil,
  [
    nil
  ],
  'site_url2'
)
```

