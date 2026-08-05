
# Create Sub Merchant Request

SubMerchant

## Structure

`CreateSubMerchantRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_facilitator_code` | `String` | Required | Payment Facilitator Code |
| `code` | `String` | Required | Code |
| `name` | `String` | Required | Name |
| `merchant_category_code` | `String` | Required | Merchant Category Code |
| `document` | `String` | Required | Document number. Only numbers, no special characters. |
| `type` | `String` | Required | Document type. Can be either 'individual' or 'company' |
| `phone` | [`CreatePhoneRequest`](../../doc/models/create-phone-request.md) | Required | Phone |
| `address` | [`CreateAddressRequest`](../../doc/models/create-address-request.md) | Required | Address |
| `legal_name` | `String` | Required | Legal name |
| `site_url` | `String` | Required | Site Url |

## Example

```ruby
create_sub_merchant_request = CreateSubMerchantRequest.new(
  'payment_facilitator_code8',
  'code6',
  'name8',
  'merchant_category_code2',
  'document8',
  'type2',
  CreatePhoneRequest.new,
  CreateAddressRequest.new,
  'legal_name6',
  'site_url0'
)
```

