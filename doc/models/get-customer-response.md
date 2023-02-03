
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
| `delinquent` | `TrueClass\|FalseClass` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `document` | `String` | Optional | - |
| `type` | `String` | Optional | - |
| `fb_access_token` | `String` | Optional | - |
| `address` | [`GetAddressResponse`](../../doc/models/get-address-response.md) | Optional | - |
| `metadata` | `Hash of String` | Optional | - |
| `phones` | [`GetPhonesResponse`](../../doc/models/get-phones-response.md) | Optional | - |
| `fb_id` | `Integer` | Optional | - |
| `code` | `String` | Optional | Código de referência do cliente no sistema da loja. Max: 52 caracteres |
| `document_type` | `String` | Optional | - |

## Example (as JSON)

```json
{
  "id": null,
  "name": null,
  "email": null,
  "delinquent": null,
  "created_at": null,
  "updated_at": null,
  "document": null,
  "type": null,
  "fb_access_token": null,
  "address": null,
  "metadata": null,
  "phones": null,
  "fb_id": null,
  "code": null,
  "document_type": null
}
```

