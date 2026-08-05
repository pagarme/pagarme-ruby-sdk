
# Create Customer Request

Request for creating a new customer

## Structure

`CreateCustomerRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `name` | `String` | Required | Name |
| `email` | `String` | Required | Email |
| `document` | `String` | Required | Document number. Only numbers, no special characters. |
| `type` | `String` | Required | Person type. Can be either 'individual' or 'company' |
| `address` | [`CreateAddressRequest`](../../doc/models/create-address-request.md) | Required | The customer's address |
| `metadata` | `Hash[String, String]` | Required | Metadata |
| `phones` | [`CreatePhonesRequest`](../../doc/models/create-phones-request.md) | Required | - |
| `code` | `String` | Required | Customer code |
| `gender` | `String` | Optional | Customer Gender |
| `document_type` | `String` | Optional | - |

## Example

```ruby
create_customer_request = CreateCustomerRequest.new(
  'Tony Stark',
  nil,
  nil,
  nil,
  CreateAddressRequest.new,
  {},
  CreatePhonesRequest.new,
  nil,
  'gender6',
  'document_type8'
)
```

