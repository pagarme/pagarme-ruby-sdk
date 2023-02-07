
# Get Address Response

Response object for getting an Address

## Structure

`GetAddressResponse`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `String` | Optional | - |
| `street` | `String` | Optional | - |
| `number` | `String` | Optional | - |
| `complement` | `String` | Optional | - |
| `zip_code` | `String` | Optional | - |
| `neighborhood` | `String` | Optional | - |
| `city` | `String` | Optional | - |
| `state` | `String` | Optional | - |
| `country` | `String` | Optional | - |
| `status` | `String` | Optional | - |
| `created_at` | `DateTime` | Optional | - |
| `updated_at` | `DateTime` | Optional | - |
| `customer` | [`GetCustomerResponse`](../../doc/models/get-customer-response.md) | Optional | - |
| `metadata` | `Hash of String` | Optional | - |
| `line_1` | `String` | Optional | Line 1 for address |
| `line_2` | `String` | Optional | Line 2 for address |
| `deleted_at` | `DateTime` | Optional | - |

## Example (as JSON)

```json
{
  "id": null,
  "street": null,
  "number": null,
  "complement": null,
  "zip_code": null,
  "neighborhood": null,
  "city": null,
  "state": null,
  "country": null,
  "status": null,
  "created_at": null,
  "updated_at": null,
  "customer": null,
  "metadata": null,
  "line_1": null,
  "line_2": null,
  "deleted_at": null
}
```

