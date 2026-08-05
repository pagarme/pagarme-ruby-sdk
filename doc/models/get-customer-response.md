
# Get Customer Response

Response object for getting a customer

## Structure

`GetCustomerResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `name` | `String` | Optional | - |
| `email` | `String` | Optional | - |
| `delinquent` | `TrueClass \| FalseClass` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `document` | `String` | Optional | - |
| `type` | `String` | Optional | - |
| `fb_access_token` | `String` | Optional | - |
| `address` | [`GetAddressResponse`](../../doc/models/get-address-response.md) | Optional | - |
| `metadata` | `Hash[String, String]` | Optional | - |
| `phones` | [`GetPhonesResponse`](../../doc/models/get-phones-response.md) | Optional | - |
| `fb_id` | `Integer` | Optional | - |
| `code` | `String` | Optional | Código de referência do cliente no sistema da loja. Max: 52 caracteres |
| `document_type` | `String` | Optional | - |

## Example

```ruby
get_customer_response = GetCustomerResponse.new(
  'id2',
  'name2',
  'email4',
  false,
  DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z')
)
```

