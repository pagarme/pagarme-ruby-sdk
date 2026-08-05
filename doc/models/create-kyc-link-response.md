
# Create KYC Link Response

KYC Link

## Structure

`CreateKYCLinkResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `base_64` | `String` | Optional | Base64 |
| `url` | `String` | Optional | URL |
| `expiration_date` | `String` | Optional | Expiration Date |

## Example

```ruby
create_kyc_link_response = CreateKYCLinkResponse.new(
  'base642',
  'url4',
  'expiration_date6'
)
```

